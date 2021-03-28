in_file_name = input("Enter File Name: ")

with open(in_file_name, 'r', encoding="utf-8") as input_file:
    read_data = input_file.read()
input_file.close()


out_file_name = in_file_name.split('.')[0] + "_NEW." +in_file_name.split('.')[1]
out_file_name = in_file_name
print(out_file_name)

with open(out_file_name, 'w', encoding="utf-8") as output_file:
    for x in read_data:
        if (x=='“') | (x=='”'):
            output_file.write('"')
        elif (x=='‘') | (x=='’'):
            output_file.write("'")
        else:
            output_file.write(x)

output_file.close()