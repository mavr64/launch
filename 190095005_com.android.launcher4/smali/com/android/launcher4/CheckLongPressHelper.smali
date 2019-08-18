.class public Lcom/android/launcher4/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/CheckLongPressHelper$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mPendingCheckForLongPress:Lcom/android/launcher4/CheckLongPressHelper$CheckForLongPress;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/launcher4/CheckLongPressHelper;->mView:Landroid/view/View;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/CheckLongPressHelper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/CheckLongPressHelper;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$2(Lcom/android/launcher4/CheckLongPressHelper;Z)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/launcher4/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 54
    iget-object v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher4/CheckLongPressHelper$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher4/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher4/CheckLongPressHelper$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher4/CheckLongPressHelper$CheckForLongPress;

    .line 58
    :cond_0
    return-void
.end method

.method public hasPerformedLongPress()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method public postCheckForLongPress()V
    .locals 4

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mHasPerformedLongPress:Z

    .line 45
    iget-object v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher4/CheckLongPressHelper$CheckForLongPress;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/launcher4/CheckLongPressHelper$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher4/CheckLongPressHelper$CheckForLongPress;-><init>(Lcom/android/launcher4/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher4/CheckLongPressHelper$CheckForLongPress;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher4/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/launcher4/CheckLongPressHelper$CheckForLongPress;

    .line 49
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppState;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method
