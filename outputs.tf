output "generator" {
    value = aws_instance.generator.*.tags.Name
}
output "ann" {
    value = aws_instance.ann.*.tags.Name
}
output "anndb" {
    value = aws_instance.anndb.*.tags.Name
}
output "rawzk" {
    value = aws_instance.rawzk.*.tags.Name
}
output "rawworker" {
    value = aws_instance.rawmaster.*.tags.Name
}
output "rawbroker" {
    value = aws_instance.rawbroker.*.tags.Name
}

output "generator_ips" {
    value = "${aws_instance.generator.*.private_ip}"
}
output "ann_ips" {
    value = "${aws_instance.ann.*.private_ip}"
}
output "anndb_ips" {
    value = "${aws_instance.anndb.*.private_ip}"
}
output "rawzk_ips" {
    value = "${aws_instance.rawzk.*.private_ip}"
}
output "rawworker_ips" {
    value = "${aws_instance.rawworker.*.private_ip}"
}
output "rawbroker_ips" {
    value = "${aws_instance.rawbroker.*.private_ip}"
}
