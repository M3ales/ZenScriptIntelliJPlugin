// This is a generated file. Not intended for manual editing.
package de.bloodworkxgaming.zenscript.plugin.zsLanguage.psi;

import java.util.List;
import org.jetbrains.annotations.*;
import com.intellij.psi.PsiElement;

public interface ZsStatement extends PsiElement {

  @Nullable
  ZsAssignStatement getAssignStatement();

  @Nullable
  ZsForLoop getForLoop();

  @Nullable
  ZsFunctionCall getFunctionCall();

  @Nullable
  ZsIfStatement getIfStatement();

  @Nullable
  PsiElement getEol();

}
