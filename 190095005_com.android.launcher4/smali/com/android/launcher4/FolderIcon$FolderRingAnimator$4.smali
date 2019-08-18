.class Lcom/android/launcher4/FolderIcon$FolderRingAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->animateToNaturalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    .line 261
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-static {v0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->access$0(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)Lcom/android/launcher4/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-static {v0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->access$0(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)Lcom/android/launcher4/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/CellLayout;->hideFolderAccept(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$4;->this$1:Lcom/android/launcher4/FolderIcon$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher4/FolderIcon;->access$2(Lcom/android/launcher4/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    :cond_1
    return-void
.end method
