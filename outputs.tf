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
output "decodezk" {
    value = aws_instance.decodezk.*.tags.Name
}
output "decodemaster" {
    value = aws_instance.decodemaster.*.tags.Name
}
output "decodeworker" {
    value = aws_instance.decodeworker.*.tags.Name
}
output "decodebroker" {
    value = aws_instance.decodebroker.*.tags.Name
}
output "statedb" {
    value = aws_instance.statedb.*.tags.Name
}
output "lb" {
    value = aws_instance.lb.*.tags.Name
}
output "util" {
    value = aws_instance.util.*.tags.Name
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
output "decodezk_ips" {
    value = "${aws_instance.decodezk.*.private_ip}"
}
output "decodemaster_ips" {
    value = "${aws_instance.decodemaster.*.private_ip}"
}
output "decodeworker_ips" {
    value = "${aws_instance.decodeworker.*.private_ip}"
}
output "decodebroker_ips" {
    value = "${aws_instance.decodebroker.*.private_ip}"
}
output "statedb_ips" {
    value = "${aws_instance.statedb.*.private_ip}"
}
output "lb_ips" {
    value = "${aws_instance.lb.*.private_ip}"
}
output "util_ips" {
    value = "${aws_instance.util.*.private_ip}"
}
