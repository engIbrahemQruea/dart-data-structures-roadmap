enum NodeType { file, folder }

extension FileSearch on FileSystemNode {
  bool containsFile(String fileName) {
    return true;
  }
}

class FileSystemNode<T> {
  final String name;
  final NodeType type;

  final List<FileSystemNode> children = [];

  FileSystemNode({required this.name, required this.type});

  bool get isFile => type == NodeType.file;
  bool get isFolder => type == NodeType.folder;

  void add(FileSystemNode node) {
    if (isFile) {
      throw Exception("Cannot add items to a file");
    }
    children.add(node);
  }

  void remove(FileSystemNode node) {
    children.remove(node);
  }

  void printTree([String indent = ""]) {
    print("$indent$name");

    for (var child in children) {
      child.printTree("$indent  ");
    }
  }
}
