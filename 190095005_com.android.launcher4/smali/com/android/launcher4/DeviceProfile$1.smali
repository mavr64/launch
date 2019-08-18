.class Lcom/android/launcher4/DeviceProfile$1;
.super Ljava/lang/Object;
.source "DynamicGrid.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/DeviceProfile;->invDistWeightedInterpolate(FFLjava/util/ArrayList;)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher4/DeviceProfileQuery;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/DeviceProfile;

.field private final synthetic val$xy:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/android/launcher4/DeviceProfile;Landroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/DeviceProfile$1;->this$0:Lcom/android/launcher4/DeviceProfile;

    iput-object p2, p0, Lcom/android/launcher4/DeviceProfile$1;->val$xy:Landroid/graphics/PointF;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher4/DeviceProfileQuery;Lcom/android/launcher4/DeviceProfileQuery;)I
    .locals 4
    .param p1, "a"    # Lcom/android/launcher4/DeviceProfileQuery;
    .param p2, "b"    # Lcom/android/launcher4/DeviceProfileQuery;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/launcher4/DeviceProfile$1;->this$0:Lcom/android/launcher4/DeviceProfile;

    iget-object v1, p0, Lcom/android/launcher4/DeviceProfile$1;->val$xy:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/android/launcher4/DeviceProfileQuery;->dimens:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2}, Lcom/android/launcher4/DeviceProfile;->access$0(Lcom/android/launcher4/DeviceProfile;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher4/DeviceProfile$1;->this$0:Lcom/android/launcher4/DeviceProfile;

    iget-object v2, p0, Lcom/android/launcher4/DeviceProfile$1;->val$xy:Landroid/graphics/PointF;

    iget-object v3, p2, Lcom/android/launcher4/DeviceProfileQuery;->dimens:Landroid/graphics/PointF;

    invoke-static {v1, v2, v3}, Lcom/android/launcher4/DeviceProfile;->access$0(Lcom/android/launcher4/DeviceProfile;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher4/DeviceProfileQuery;

    check-cast p2, Lcom/android/launcher4/DeviceProfileQuery;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/DeviceProfile$1;->compare(Lcom/android/launcher4/DeviceProfileQuery;Lcom/android/launcher4/DeviceProfileQuery;)I

    move-result v0

    return v0
.end method
