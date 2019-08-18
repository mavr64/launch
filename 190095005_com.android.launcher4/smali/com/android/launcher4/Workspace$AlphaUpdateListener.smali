.class Lcom/android/launcher4/Workspace$AlphaUpdateListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlphaUpdateListener"
.end annotation


# instance fields
.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2644
    iput-object p1, p0, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->view:Landroid/view/View;

    .line 2645
    return-void
.end method

.method public static updateVisibility(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const v2, 0x3c23d70a    # 0.01f

    .line 2657
    invoke-static {}, Lcom/android/launcher4/Workspace;->access$3()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .line 2658
    .local v0, "invisibleState":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 2659
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 2660
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2665
    :cond_0
    :goto_1
    return-void

    .line 2657
    .end local v0    # "invisibleState":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 2661
    .restart local v0    # "invisibleState":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 2662
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2663
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2669
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 2674
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2678
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2685
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/android/launcher4/Workspace$AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    .line 2650
    return-void
.end method
