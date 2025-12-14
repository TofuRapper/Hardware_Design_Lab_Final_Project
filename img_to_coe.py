from PIL import Image
import sys
import os

def convert_image_to_coe(image_path, output_path):
    if not os.path.exists(image_path):
        print(f"Error: File {image_path} not found.")
        return

    try:
        img = Image.open(image_path)
        img = img.convert("RGB")
        width, height = img.size
        print(f"Image size: {width}x{height}")

        with open(output_path, 'w') as f:
            f.write("memory_initialization_radix=16;\n")
            f.write("memory_initialization_vector=\n")
            
            pixels = []
            for y in range(height):
                for x in range(width):
                    r, g, b = img.getpixel((x, y))
                    # Convert 8-bit to 4-bit
                    r = (r >> 4) & 0xF
                    g = (g >> 4) & 0xF
                    b = (b >> 4) & 0xF
                    val = (r << 8) | (g << 4) | b
                    pixels.append(f"{val:03X}")
            
            # Join with commas and end with semicolon
            f.write(",\n".join(pixels) + ";")
            
        print(f"Successfully created {output_path}")
        
    except Exception as e:
        print(f"Error converting image: {e}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python img_to_coe.py <input_image> [output_coe]")
    else:
        input_img = sys.argv[1]
        if len(sys.argv) >= 3:
            output_coe = sys.argv[2]
        else:
            output_coe = os.path.splitext(input_img)[0] + ".coe"
        convert_image_to_coe(input_img, output_coe)
