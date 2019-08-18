.class Lcom/android/launcher4/WallpaperPickerActivity$7;
.super Ljava/lang/Object;
.source "WallpaperPickerActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


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
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private numCheckedItems()I
    .locals 5

    .prologue
    .line 453
    iget-object v4, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v4}, Lcom/android/launcher4/WallpaperPickerActivity;->access$11(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 454
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 455
    .local v3, "numCheckedItems":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 461
    return v3

    .line 456
    :cond_0
    iget-object v4, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v4}, Lcom/android/launcher4/WallpaperPickerActivity;->access$11(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CheckableFrameLayout;

    .line 457
    .local v0, "c":Lcom/android/launcher4/CheckableFrameLayout;
    invoke-virtual {v0}, Lcom/android/launcher4/CheckableFrameLayout;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 458
    add-int/lit8 v3, v3, 0x1

    .line 455
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 482
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 483
    .local v4, "itemId":I
    const v7, 0x7f11009f

    if-ne v4, v7, :cond_3

    .line 484
    iget-object v7, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v7}, Lcom/android/launcher4/WallpaperPickerActivity;->access$11(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 485
    .local v1, "childCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v6, "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 494
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 497
    iget-object v7, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v7}, Lcom/android/launcher4/WallpaperPickerActivity;->access$14(Lcom/android/launcher4/WallpaperPickerActivity;)V

    .line 498
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 499
    const/4 v7, 0x1

    .line 501
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v6    # "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_2
    return v7

    .line 487
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v6    # "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    iget-object v7, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v7}, Lcom/android/launcher4/WallpaperPickerActivity;->access$11(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CheckableFrameLayout;

    .line 488
    .local v0, "c":Lcom/android/launcher4/CheckableFrameLayout;
    invoke-virtual {v0}, Lcom/android/launcher4/CheckableFrameLayout;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 489
    invoke-virtual {v0}, Lcom/android/launcher4/CheckableFrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;

    .line 490
    .local v3, "info":Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
    iget-object v7, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-virtual {v3, v7}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;->onDelete(Lcom/android/launcher4/WallpaperPickerActivity;)V

    .line 491
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .end local v3    # "info":Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "c":Lcom/android/launcher4/CheckableFrameLayout;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 495
    .local v5, "v":Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v8}, Lcom/android/launcher4/WallpaperPickerActivity;->access$11(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 501
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "viewsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 447
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 448
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 449
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 508
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v3}, Lcom/android/launcher4/WallpaperPickerActivity;->access$11(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 509
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 513
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v3}, Lcom/android/launcher4/WallpaperPickerActivity;->access$7(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 514
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher4/WallpaperPickerActivity;->access$10(Lcom/android/launcher4/WallpaperPickerActivity;Landroid/view/ActionMode;)V

    .line 515
    return-void

    .line 510
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-static {v3}, Lcom/android/launcher4/WallpaperPickerActivity;->access$11(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CheckableFrameLayout;

    .line 511
    .local v0, "c":Lcom/android/launcher4/CheckableFrameLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher4/CheckableFrameLayout;->setChecked(Z)V

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    .line 468
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperPickerActivity$7;->numCheckedItems()I

    move-result v0

    .line 469
    .local v0, "numCheckedItems":I
    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 475
    :goto_0
    return v6

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity$7;->this$0:Lcom/android/launcher4/WallpaperPickerActivity;

    invoke-virtual {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 474
    const/high16 v2, 0x7f0e0000

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 473
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
