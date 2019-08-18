.class Lcom/android/launcher4/Launcher$85;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$scale:F

.field private final synthetic val$stateAnimation:Landroid/animation/AnimatorSet;

.field private final synthetic val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Landroid/animation/AnimatorSet;Lcom/android/launcher4/AppsCustomizeTabHost;FLandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$85;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$85;->val$stateAnimation:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$85;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    iput p4, p0, Lcom/android/launcher4/Launcher$85;->val$scale:F

    iput-object p5, p0, Lcom/android/launcher4/Launcher$85;->val$fromView:Landroid/view/View;

    iput-boolean p6, p0, Lcom/android/launcher4/Launcher$85;->val$animated:Z

    .line 7419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7423
    iget-object v0, p0, Lcom/android/launcher4/Launcher$85;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$110(Lcom/android/launcher4/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/Launcher$85;->val$stateAnimation:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_0

    .line 7430
    :goto_0
    return-void

    .line 7425
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Launcher$85;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$85;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    iget v2, p0, Lcom/android/launcher4/Launcher$85;->val$scale:F

    invoke-static {v0, v1, v2}, Lcom/android/launcher4/Launcher;->access$111(Lcom/android/launcher4/Launcher;Landroid/view/View;F)V

    .line 7426
    iget-object v0, p0, Lcom/android/launcher4/Launcher$85;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$85;->val$fromView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher$85;->val$animated:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher4/Launcher;->access$112(Lcom/android/launcher4/Launcher;Landroid/view/View;ZZ)V

    .line 7427
    iget-object v0, p0, Lcom/android/launcher4/Launcher$85;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Launcher$85;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    iget-boolean v2, p0, Lcom/android/launcher4/Launcher$85;->val$animated:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher4/Launcher;->access$112(Lcom/android/launcher4/Launcher;Landroid/view/View;ZZ)V

    .line 7429
    iget-object v0, p0, Lcom/android/launcher4/Launcher$85;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$110(Lcom/android/launcher4/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/Launcher$85;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 7428
    invoke-static {v0, v1}, Lcom/android/launcher4/LauncherAnimUtils;->startAnimationAfterNextDraw(Landroid/animation/Animator;Landroid/view/View;)V

    goto :goto_0
.end method
