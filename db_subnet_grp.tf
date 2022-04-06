resource "aws_db_subnet_group" "db-subnet" {
  name       = "db_subnet_group"
  subnet_ids = ["${aws_subnet.privateone.id}", "${aws_subnet.privatetwo.id}"]
}