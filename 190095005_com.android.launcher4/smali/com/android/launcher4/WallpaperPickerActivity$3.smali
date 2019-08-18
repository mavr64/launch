.class Lcom/android/launcher4/WallpaperPickerActivity$3;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$3;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 320
    move-object v0, p1

    check-cast v0, Lcom/android/launcher4/CheckableFrameLayout;

    .line 321
    .local v0, "c":Lcom/android/launcher4/CheckableFrameLayout;
    invoke-virtual {v0}, Lcom/android/launcher4/CheckableFrameLayout;->toggle()V

    .line 323
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$3;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v3}, Lcom/android/launcher4/WallpaperPickerActivity;->access$5(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/ActionMode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 324
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$3;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v3}, Lcom/android/launcher4/WallpaperPickerActivity;->access$5(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 333
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 327
    :cond_1
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$3;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    iget-object v4, p0, Lcom/android/launcher4/WallpaperPickerActivity$3;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    iget-object v5, p0, Lcom/android/launcher4/WallpaperPickerActivity$3;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v5}, Lcom/android/launcher4/WallpaperPickerActivity;->access$9(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/ActionMode$Callback;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher4/WallpaperPickerActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/launcher4/WallpaperPickerActivity;->access$10(Lcom/android/launcher4/WallpaperPickerActivity;Landroid/view/ActionMode;)V

    .line 328
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$3;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v3}, Lcom/android/launcher4/WallpaperPickerActivity;->access$11(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 329
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 330
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$3;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v3}, Lcom/android/launcher4/WallpaperPickerActivity;->access$11(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
