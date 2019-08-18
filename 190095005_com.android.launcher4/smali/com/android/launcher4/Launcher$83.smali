.class Lcom/android/launcher4/Launcher$83;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field private final synthetic val$fromView:Landroid/view/View;

.field private final synthetic val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Landroid/view/View;Lcom/android/launcher4/AppsCustomizeTabHost;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$83;->this$0:Lcom/android/launcher4/Launcher;

    iput-object p2, p0, Lcom/android/launcher4/Launcher$83;->val$fromView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher4/Launcher$83;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 7359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 7362
    if-nez p1, :cond_0

    .line 7363
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "animation is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7365
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 7366
    .local v0, "t":F
    iget-object v1, p0, Lcom/android/launcher4/Launcher$83;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Launcher$83;->val$fromView:Landroid/view/View;

    invoke-static {v1, v2, v0}, Lcom/android/launcher4/Launcher;->access$108(Lcom/android/launcher4/Launcher;Landroid/view/View;F)V

    .line 7367
    iget-object v1, p0, Lcom/android/launcher4/Launcher$83;->this$0:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Launcher$83;->val$toView:Lcom/android/launcher4/AppsCustomizeTabHost;

    invoke-static {v1, v2, v0}, Lcom/android/launcher4/Launcher;->access$108(Lcom/android/launcher4/Launcher;Landroid/view/View;F)V

    .line 7368
    return-void
.end method
