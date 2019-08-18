.class Lcom/android/launcher4/Workspace$ZoomOutInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZoomOutInterpolator"
.end annotation


# instance fields
.field private final decelerate:Landroid/view/animation/DecelerateInterpolator;

.field private final zInterpolator:Lcom/android/launcher4/Workspace$ZInterpolator;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2011
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2012
    const/high16 v1, 0x3f400000    # 0.75f

    .line 2011
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher4/Workspace$ZoomOutInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    .line 2013
    new-instance v0, Lcom/android/launcher4/Workspace$ZInterpolator;

    const v1, 0x3e051eb8    # 0.13f

    invoke-direct {v0, v1}, Lcom/android/launcher4/Workspace$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher4/Workspace$ZoomOutInterpolator;->zInterpolator:Lcom/android/launcher4/Workspace$ZInterpolator;

    .line 2010
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/launcher4/Workspace$ZoomOutInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/android/launcher4/Workspace$ZoomOutInterpolator;->zInterpolator:Lcom/android/launcher4/Workspace$ZInterpolator;

    .line 2017
    invoke-virtual {v1, p1}, Lcom/android/launcher4/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result v1

    .line 2016
    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
