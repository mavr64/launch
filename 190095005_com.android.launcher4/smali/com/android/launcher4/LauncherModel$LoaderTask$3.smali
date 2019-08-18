.class Lcom/android/launcher4/LauncherModel$LoaderTask$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
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
        "Lcom/android/launcher4/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

.field private final synthetic val$grid:Lcom/android/launcher4/DeviceProfile;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherModel$LoaderTask;Lcom/android/launcher4/DeviceProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$3;->this$1:Lcom/android/launcher4/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$LoaderTask$3;->val$grid:Lcom/android/launcher4/DeviceProfile;

    .line 2480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/ItemInfo;)I
    .locals 16
    .param p1, "lhs"    # Lcom/android/launcher4/ItemInfo;
    .param p2, "rhs"    # Lcom/android/launcher4/ItemInfo;

    .prologue
    .line 2483
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher4/LauncherModel$LoaderTask$3;->val$grid:Lcom/android/launcher4/DeviceProfile;

    iget v10, v10, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v2, v10

    .line 2484
    .local v2, "cellCountX":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher4/LauncherModel$LoaderTask$3;->val$grid:Lcom/android/launcher4/DeviceProfile;

    iget v10, v10, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v3, v10

    .line 2485
    .local v3, "cellCountY":I
    mul-int v5, v2, v3

    .line 2486
    .local v5, "screenOffset":I
    mul-int/lit8 v4, v5, 0x6

    .line 2488
    .local v4, "containerOffset":I
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/launcher4/ItemInfo;->container:J

    int-to-long v12, v4

    mul-long/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 2489
    int-to-long v14, v5

    mul-long/2addr v12, v14

    .line 2488
    add-long/2addr v10, v12

    .line 2489
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher4/ItemInfo;->cellY:I

    mul-int/2addr v12, v2

    int-to-long v12, v12

    .line 2488
    add-long/2addr v10, v12

    .line 2489
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    int-to-long v12, v12

    .line 2488
    add-long v6, v10, v12

    .line 2490
    .local v6, "lr":J
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/launcher4/ItemInfo;->container:J

    int-to-long v12, v4

    mul-long/2addr v10, v12

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher4/ItemInfo;->screenId:J

    .line 2491
    int-to-long v14, v5

    mul-long/2addr v12, v14

    .line 2490
    add-long/2addr v10, v12

    .line 2491
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher4/ItemInfo;->cellY:I

    mul-int/2addr v12, v2

    int-to-long v12, v12

    .line 2490
    add-long/2addr v10, v12

    .line 2491
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher4/ItemInfo;->cellX:I

    int-to-long v12, v12

    .line 2490
    add-long v8, v10, v12

    .line 2492
    .local v8, "rr":J
    sub-long v10, v6, v8

    long-to-int v10, v10

    return v10
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/android/launcher4/ItemInfo;

    check-cast p2, Lcom/android/launcher4/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/LauncherModel$LoaderTask$3;->compare(Lcom/android/launcher4/ItemInfo;Lcom/android/launcher4/ItemInfo;)I

    move-result v0

    return v0
.end method
