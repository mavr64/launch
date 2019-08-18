.class Lcom/android/launcher4/Launcher$88;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher4/Workspace$State;ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$animated:Z

.field private final synthetic val$fromView:Landroid/view/View;

.field private final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field private final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$88;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$88;->val$fromView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher4/Launcher$88;->val$animated:Z

    iput-object p4, p0, Lcom/android/launcher4/Launcher$88;->val$toView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher4/Launcher$88;->val$onCompleteRunnable:Ljava/lang/Runnable;

    .line 7538
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    .line 7541
    iget-object v0, p0, Lcom/android/launcher4/Launcher$88;->val$fromView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7542
    iget-object v0, p0, Lcom/android/launcher4/Launcher$88;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$88;->val$fromView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher$88;->val$animated:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher4/Launcher;->access$109(Lcom/android/launcher4/Launcher;Landroid/view/View;ZZ)V

    .line 7543
    iget-object v0, p0, Lcom/android/launcher4/Launcher$88;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$88;->val$toView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher$88;->val$animated:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher4/Launcher;->access$109(Lcom/android/launcher4/Launcher;Landroid/view/View;ZZ)V

    .line 7544
    iget-object v0, p0, Lcom/android/launcher4/Launcher$88;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 7545
    iget-object v0, p0, Lcom/android/launcher4/Launcher$88;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7547
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$88;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$103(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->updateCurrentPageScroll()V

    .line 7548
    iget-object v0, p0, Lcom/android/launcher4/Launcher$88;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$103(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/AppsCustomizePagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizePagedView;->resumeScrolling()V

    .line 7549
    return-void
.end method
