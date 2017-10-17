set -x
set -e
sed -i s/Instruction/Statement/g $(git ls-files | grep -v compyte)
sed -i s/instruction/statement/g $(git ls-files | grep -v compyte)
sed -i s/insn/stmt/g $(git ls-files | grep -v compyte)
for d in kernel codegen transform; do
  git mv loopy/$d/instruction.py loopy/$d/statement.py
done