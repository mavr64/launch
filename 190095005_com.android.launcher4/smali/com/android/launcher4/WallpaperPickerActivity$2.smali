.class Lcom/android/launcher4/WallpaperPickerActivity$2;
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
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$2;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 294
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$2;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$5(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$2;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$6(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;

    .line 302
    .local v0, "info":Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
    invoke-virtual {v0}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$2;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$7(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$2;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$7(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$2;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher4/WallpaperPickerActivity;->access$8(Lcom/android/launcher4/WallpaperPickerActivity;Landroid/view/View;)V

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$2;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v1, p1}, Lcom/android/launcher4/WallpaperPickerActivity;->access$8(Lcom/android/launcher4/WallpaperPickerActivity;Landroid/view/View;)V

    .line 308
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 312
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$2;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    const v2, 0x7f0c0007

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher4/WallpaperPickerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {p1, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 314
    :cond_3
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$2;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;->onClick(Lcom/android/launcher4/WallpaperPickerActivity;)V

    goto :goto_0
.end method
