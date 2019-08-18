.class public Lcom/android/launcher4/PagedView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public isFullScreenPage:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 797
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 798
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 801
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/PagedView$LayoutParams;->isFullScreenPage:Z

    .line 802
    return-void
.end method
