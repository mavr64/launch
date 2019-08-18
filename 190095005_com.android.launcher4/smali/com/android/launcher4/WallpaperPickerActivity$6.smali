.class Lcom/android/launcher4/WallpaperPickerActivity$6;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/WallpaperPickerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/WallpaperPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$6;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$6;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$7(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$6;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$7(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;

    .line 434
    .local v0, "info":Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$6;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;->onSave(Lcom/android/launcher4/WallpaperPickerActivity;)V

    .line 436
    .end local v0    # "info":Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
    :cond_0
    return-void
.end method
