.class Lcom/android/launcher4/Workspace$ZoomInInterpolator;
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
    name = "ZoomInInterpolator"
.end annotation


# instance fields
.field private final decelerate:Landroid/view/animation/DecelerateInterpolator;

.field private final inverseZInterpolator:Lcom/android/launcher4/Workspace$InverseZInterpolator;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2025
    new-instance v0, Lcom/android/launcher4/Workspace$InverseZInterpolator;

    .line 2026
    const v1, 0x3eb33333    # 0.35f

    .line 2025
    invoke-direct {v0, v1}, Lcom/android/launcher4/Workspace$InverseZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher4/Workspace$ZoomInInterpolator;->inverseZInterpolator:Lcom/android/launcher4/Workspace$InverseZInterpolator;

    .line 2027
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2028
    const/high16 v1, 0x40400000    # 3.0f

    .line 2027
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher4/Workspace$ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    .line 2024
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .param p1, "input"    # F

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/android/launcher4/Workspace$ZoomInInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    iget-object v1, p0, Lcom/android/launcher4/Workspace$ZoomInInterpolator;->inverseZInterpolator:Lcom/android/launcher4/Workspace$InverseZInterpolator;

    .line 2032
    invoke-virtual {v1, p1}, Lcom/android/launcher4/Workspace$InverseZInterpolator;->getInterpolation(F)F

    move-result v1

    .line 2031
    invoke-virtual {v0, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
