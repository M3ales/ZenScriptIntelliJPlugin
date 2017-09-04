// This is a generated file. Not intended for manual editing.
package de.bloodworkxgaming.zenscript.plugin.zsLanguage.psi;

import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElementVisitor;
import com.intellij.psi.PsiElement;

public class ZsVisitor extends PsiElementVisitor {

  public void visitArrayDeclaration(@NotNull ZsArrayDeclaration o) {
    visitPsiElement(o);
  }

  public void visitArrayRead(@NotNull ZsArrayRead o) {
    visitPsiElement(o);
  }

  public void visitAssignStatement(@NotNull ZsAssignStatement o) {
    visitPsiElement(o);
  }

  public void visitBracketHandler(@NotNull ZsBracketHandler o) {
    visitPsiElement(o);
  }

  public void visitFunctionCall(@NotNull ZsFunctionCall o) {
    visitPsiElement(o);
  }

  public void visitNumber(@NotNull ZsNumber o) {
    visitPsiElement(o);
  }

  public void visitStatement(@NotNull ZsStatement o) {
    visitPsiElement(o);
  }

  public void visitValidCallable(@NotNull ZsValidCallable o) {
    visitPsiElement(o);
  }

  public void visitValidVariable(@NotNull ZsValidVariable o) {
    visitPsiElement(o);
  }

  public void visitVariable(@NotNull ZsVariable o) {
    visitNamedElement(o);
  }

  public void visitNamedElement(@NotNull ZsNamedElement o) {
    visitPsiElement(o);
  }

  public void visitPsiElement(@NotNull PsiElement o) {
    visitElement(o);
  }

}
