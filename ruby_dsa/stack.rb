class Stack
    def initialize(max_size = 5)
        @stack = []
        @max_size = max_size
    end

    def push(item)
        if is_full?
            puts "Stack Overflow"
        else
            puts "Pushed #{item}"
            @stack.push(item)
        end
    end

    def pop
        if is_empty?
          puts "Stack Underflow"
        else
            item = @stack.pop
            puts "Popped #{item}"
        end
    end

    def is_empty?
        @stack.empty?
    end

    def is_full?
        @stack.size == @max_size
    end

    def display
        if is_empty?
            puts "Stack is empty"
        else
            puts "Stack (top -> bottom): #{@stack.reverse.join(' -> ')}"
        end
    end
end

st = Stack.new(3)
st.push(1)
st.push(2)
st.push(3)

st.display

st.push(4) 

st.pop
st.pop
st.pop
st.pop