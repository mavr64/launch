.class Lcom/android/launcher4/Launcher$84;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->showAppsCustomizeHelper(ZZLcom/android/launcher4/AppsCustomizePagedView$ContentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$animated:Z

.field private final synthetic val$fromView:Landroid/view/View;

.field private final synthetic val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/AppsCustomizeTabHost;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$84;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$84;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$84;->val$fromView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/launcher4/Launcher$84;->val$animated:Z

    .line 7377
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    .line 7389
    iget-object v0, p0, Lcom/android/launcher4/Launcher$84;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$84;->val$fromView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher$84;->val$animated:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher4/Launcher;->access$109(Lcom/android/launcher4/Launcher;Landroid/view/View;ZZ)V

    .line 7390
    iget-object v0, p0, Lcom/android/launcher4/Launcher$84;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$84;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher$84;->val$animated:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher4/Launcher;->access$109(Lcom/android/launcher4/Launcher;Landroid/view/View;ZZ)V

    .line 7393
    iget-object v0, p0, Lcom/android/launcher4/Launcher$84;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$35(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/SearchDropTargetBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7394
    iget-object v0, p0, Lcom/android/launcher4/Launcher$84;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$35(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/SearchDropTargetBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher4/SearchDropTargetBar;->hideSearchBar(Z)V

    .line 7396
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 7381
    iget-object v0, p0, Lcom/android/launcher4/Launcher$84;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/AppsCustomizeTabHost;->setTranslationX(F)V

    .line 7382
    iget-object v0, p0, Lcom/android/launcher4/Launcher$84;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/AppsCustomizeTabHost;->setTranslationY(F)V

    .line 7383
    iget-object v0, p0, Lcom/android/launcher4/Launcher$84;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/AppsCustomizeTabHost;->setVisibility(I)V

    .line 7385
    return-void
.end method
