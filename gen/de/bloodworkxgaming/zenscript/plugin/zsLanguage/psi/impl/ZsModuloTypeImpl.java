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

public class ZsModuloTypeImpl extends ASTWrapperPsiElement implements ZsModuloType {

  public ZsModuloTypeImpl(ASTNode node) {
    super(node);
  }

  public void accept(@NotNull ZsVisitor visitor) {
    visitor.visitModuloType(this);
  }

  public void accept(@NotNull PsiElementVisitor visitor) {
    if (visitor instanceof ZsVisitor) accept((ZsVisitor)visitor);
    else super.accept(visitor);
  }

  @Override
  @Nullable
  public ZsBracketHandler getBracketHandler() {
    return findChildByClass(ZsBracketHandler.class);
  }

  @Override
  @Nullable
  public ZsVariable getVariable() {
    return findChildByClass(ZsVariable.class);
  }

  @Override
  @NotNull
  public PsiElement getDigits() {
    return findNotNullChildByType(DIGITS);
  }

}
