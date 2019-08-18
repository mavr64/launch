.class Lcom/android/launcher4/DeviceProfileQuery;
.super Ljava/lang/Object;
.source "DynamicGrid.java"


# instance fields
.field dimens:Landroid/graphics/PointF;

.field heightDps:F

.field value:F

.field widthDps:F


# direct methods
.method constructor <init>(FFF)V
    .locals 1
    .param p1, "w"    # F
    .param p2, "h"    # F
    .param p3, "v"    # F

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/android/launcher4/DeviceProfileQuery;->widthDps:F

    .line 53
    iput p2, p0, Lcom/android/launcher4/DeviceProfileQuery;->heightDps:F

    .line 54
    iput p3, p0, Lcom/android/launcher4/DeviceProfileQuery;->value:F

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher4/DeviceProfileQuery;->dimens:Landroid/graphics/PointF;

    .line 56
    return-void
.end method
