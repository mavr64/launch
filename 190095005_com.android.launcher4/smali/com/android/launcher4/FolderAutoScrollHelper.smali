.class public Lcom/android/launcher4/FolderAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;
.source "FolderAutoScrollHelper.java"


# static fields
.field private static final MAX_SCROLL_VELOCITY:F = 1500.0f


# instance fields
.field private final mTarget:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 3
    .param p1, "target"    # Landroid/widget/ScrollView;

    .prologue
    const/4 v2, 0x1

    const v1, 0x44bb8000    # 1500.0f

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    .line 34
    iput-object p1, p0, Lcom/android/launcher4/FolderAutoScrollHelper;->mTarget:Landroid/widget/ScrollView;

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/launcher4/FolderAutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 37
    invoke-virtual {p0, v2}, Lcom/android/launcher4/FolderAutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 38
    invoke-virtual {p0, v2}, Lcom/android/launcher4/FolderAutoScrollHelper;->setExclusive(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 39
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher4/FolderAutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/launcher4/FolderAutoScrollHelper;->setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/launcher4/FolderAutoScrollHelper;->setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 42
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher4/FolderAutoScrollHelper;->mTarget:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public scrollTargetBy(II)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher4/FolderAutoScrollHelper;->mTarget:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 47
    return-void
.end method
