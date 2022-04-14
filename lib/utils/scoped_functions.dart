ReturnType run<ReturnType>(ReturnType Function() operation) {
  return operation();
}

extension ScopeFunctionsForObject<T extends Object> on T {
  ReturnType let<ReturnType>(ReturnType Function(T item) operationFor) {
    return operationFor(this);
  }

  T also(void Function(T item) operationFor) {
    operationFor(this);
    return this;
  }
}

// Adapted from: https://github.com/YusukeIwaki/dart-kotlin_flavor#let