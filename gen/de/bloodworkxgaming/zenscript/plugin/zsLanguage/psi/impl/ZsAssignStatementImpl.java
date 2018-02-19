// This is a generated file. Not intended for manual editing.
package de.bloodworkxgaming.zenscript.plugin.zsLanguage.psi.impl;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.lang.ASTNode;
import com.intellij.psi.PsiElement;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.util.PsiTreeUtil;
import static de.bloodworkxgaming.zenscript.plugin.zsLanguage.psi.ZsTypes.*;
import com.intellij.extapi.psi.ASTWrapperPsiElement;
import de.bloodworkxgaming.zenscript.plugin.zsLanguage.psi.*;

public class ZsAssignStatementImpl extends ASTWrapperPsiElement implements ZsAssignStatement {

  public ZsAssignStatementImpl(ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZsVisitor visitor) {
    visitor.visitAssignStatement(this);
  }

  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZsVisitor) accept((ZsVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZsClassName getClassName() {
    return findChildByClass(ZsClassName.class);
  }

  @Override
  @NotNull
  public ZsFieldReference getFieldReference() {
    return findNotNullChildByClass(ZsFieldReference.class);
  }

  @Override
  @Nullable
  public ZsMapDeclaration getMapDeclaration() {
    return findChildByClass(ZsMapDeclaration.class);
  }

  @Override
  @Nullable
  public ZsValidVariable getValidVariable() {
    return findChildByClass(ZsValidVariable.class);
  }

}
