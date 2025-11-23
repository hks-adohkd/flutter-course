abstract class ITree {
  void getString();
}

class Tree implements ITree {
  String node;
  List<Tree> children;

  Tree({this.node = "default", required this.children});
  @override
  void getString() {
    print("The node name is: $node");
    for (var child in children) {
      child.getString();
    }
  }
}

void main() {
  Tree t = Tree(
    node: "root",
    children: [
      Tree(node: "son1", children: []),
      Tree(
        node: "son2",
        children: [
          Tree(node: "grandchild1", children: []),
          Tree(node: "grandson2", children: []),
        ],
      ),
    ],
  );
  t.getString();
}
