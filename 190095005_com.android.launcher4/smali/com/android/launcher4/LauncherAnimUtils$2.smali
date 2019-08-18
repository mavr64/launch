.class Lcom/android/launcher4/LauncherAnimUtils$2;
.super Ljava/lang/Object;
.source "LauncherAnimUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherAnimUtils;->startAnimationAfterNextDraw(Landroid/animation/Animator;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStarted:Z

.field private final synthetic val$animator:Landroid/animation/Animator;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/animation/Animator;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherAnimUtils$2;->val$animator:Landroid/animation/Animator;

    iput-object p2, p0, Lcom/android/launcher4/LauncherAnimUtils$2;->val$view:Landroid/view/View;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/LauncherAnimUtils$2;->mStarted:Z

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 6

    .prologue
    .line 58
    iget-boolean v1, p0, Lcom/android/launcher4/LauncherAnimUtils$2;->mStarted:Z

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher4/LauncherAnimUtils$2;->mStarted:Z

    .line 61
    iget-object v1, p0, Lcom/android/launcher4/LauncherAnimUtils$2;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/launcher4/LauncherAnimUtils$2;->val$animator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 66
    move-object v0, p0

    .line 67
    .local v0, "listener":Landroid/view/ViewTreeObserver$OnDrawListener;
    iget-object v1, p0, Lcom/android/launcher4/LauncherAnimUtils$2;->val$view:Landroid/view/View;

    new-instance v2, Lcom/android/launcher4/LauncherAnimUtils$2$1;

    iget-object v3, p0, Lcom/android/launcher4/LauncherAnimUtils$2;->val$view:Landroid/view/View;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/launcher4/LauncherAnimUtils$2$1;-><init>(Lcom/android/launcher4/LauncherAnimUtils$2;Landroid/view/View;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
