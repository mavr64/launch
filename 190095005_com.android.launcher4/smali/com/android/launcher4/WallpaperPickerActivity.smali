.class public Lcom/android/launcher4/WallpaperPickerActivity;
.super Lcom/android/launcher4/WallpaperCropActivity;
.source "WallpaperPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;,
        Lcom/android/launcher4/WallpaperPickerActivity$PickImageInfo;,
        Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;,
        Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;,
        Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;,
        Lcom/android/launcher4/WallpaperPickerActivity$ZeroPaddingDrawable;
    }
.end annotation


# static fields
.field public static final IMAGE_PICK:I = 0x5

.field public static final PICK_LIVE_WALLPAPER:I = 0x7

.field public static final PICK_WALLPAPER_THIRD_PARTY_ACTIVITY:I = 0x6

.field static final TAG:Ljava/lang/String; = "Launcher.WallpaperPickerActivity"

.field private static final TEMP_WALLPAPER_TILES:Ljava/lang/String; = "TEMP_WALLPAPER_TILES"


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mIgnoreNextTap:Z

.field private mLiveWallpaperInfoOnPickerLaunch:Landroid/app/WallpaperInfo;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mSavedImages:Lcom/android/launcher4/SavedWallpaperImages;

.field private mSelectedThumb:Landroid/view/View;

.field mTempWallpaperTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

.field private mWallpaperStrip:Landroid/view/View;

.field private mWallpapersView:Landroid/widget/LinearLayout;

.field mliveWallpaper:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperCropActivity;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mTempWallpaperTiles:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method static synthetic access$0(Landroid/content/res/Resources;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 621
    invoke-static {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 627
    invoke-static/range {p0 .. p7}, Lcom/android/launcher4/WallpaperPickerActivity;->createThumbnail(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/launcher4/WallpaperPickerActivity;Landroid/view/ActionMode;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static synthetic access$11(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/launcher4/WallpaperPickerActivity;Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;ZZ)V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher4/WallpaperPickerActivity;->populateWallpapersFromAdapter(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;ZZ)V

    return-void
.end method

.method static synthetic access$13(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->initializeScrollForRtl()V

    return-void
.end method

.method static synthetic access$14(Lcom/android/launcher4/WallpaperPickerActivity;)V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->updateTileIndices()V

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/launcher4/WallpaperPickerActivity;Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mIgnoreNextTap:Z

    return-void
.end method

.method static synthetic access$4(Lcom/android/launcher4/WallpaperPickerActivity;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mIgnoreNextTap:Z

    return v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mSelectedThumb:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/android/launcher4/WallpaperPickerActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mSelectedThumb:Landroid/view/View;

    return-void
.end method

.method static synthetic access$9(Lcom/android/launcher4/WallpaperPickerActivity;)Landroid/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method private addLongPressHandler(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 727
    return-void
.end method

.method private addTemporaryWallpaperTile(Landroid/net/Uri;)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 667
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mTempWallpaperTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 670
    const v2, 0x7f040033

    iget-object v4, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 669
    check-cast v10, Landroid/widget/FrameLayout;

    .line 671
    .local v10, "pickedImageThumbnail":Landroid/widget/FrameLayout;
    invoke-static {v10}, Lcom/android/launcher4/WallpaperPickerActivity;->setWallpaperItemPaddingToZero(Landroid/widget/FrameLayout;)V

    .line 674
    const v1, 0x7f110096

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 675
    .local v8, "image":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher4/WallpaperPickerActivity;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v0

    .line 676
    .local v0, "defaultSize":Landroid/graphics/Point;
    invoke-static {p0, p1}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExif(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .local v6, "rotation":I
    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move v7, v5

    .line 677
    invoke-static/range {v0 .. v7}, Lcom/android/launcher4/WallpaperPickerActivity;->createThumbnail(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 678
    .local v11, "thumb":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_0

    .line 679
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 680
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 681
    .local v12, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 685
    .end local v12    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 687
    new-instance v9, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;

    invoke-direct {v9, p1}, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;-><init>(Landroid/net/Uri;)V

    .line 688
    .local v9, "info":Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;
    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 689
    invoke-virtual {v9, v10}, Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;->setView(Landroid/view/View;)V

    .line 690
    invoke-direct {p0, v10}, Lcom/android/launcher4/WallpaperPickerActivity;->addLongPressHandler(Landroid/view/View;)V

    .line 691
    invoke-direct {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->updateTileIndices()V

    .line 692
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, v10}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 694
    return-void

    .line 683
    .end local v9    # "info":Lcom/android/launcher4/WallpaperPickerActivity$UriWallpaperInfo;
    :cond_0
    const-string v1, "Launcher.WallpaperPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error loading thumbnail for uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "listResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    new-instance v0, Ljava/util/ArrayList;

    const/16 v6, 0x18

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 800
    .local v0, "bundledWallpapers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;>;"
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, "extras":[Ljava/lang/String;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 816
    return-object v0

    .line 801
    :cond_0
    aget-object v1, v2, v6

    .line 802
    .local v1, "extra":Ljava/lang/String;
    const-string v8, "drawable"

    invoke-virtual {p1, v1, v8, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 803
    .local v3, "resId":I
    if-eqz v3, :cond_2

    .line 804
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_small"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {p1, v8, v9, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 806
    .local v4, "thumbRes":I
    if-eqz v4, :cond_1

    .line 808
    new-instance v5, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v5, p1, v3, v8}, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;-><init>(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)V

    .line 809
    .local v5, "wallpaperInfo":Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    .end local v4    # "thumbRes":I
    .end local v5    # "wallpaperInfo":Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 813
    :cond_2
    const-string v8, "Launcher.WallpaperPickerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Couldn\'t find wallpaper "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createImageTileView(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 4
    .param p0, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 879
    if-nez p2, :cond_1

    .line 880
    const v2, 0x7f040033

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    :goto_0
    move-object v2, v1

    .line 885
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/android/launcher4/WallpaperPickerActivity;->setWallpaperItemPaddingToZero(Landroid/widget/FrameLayout;)V

    .line 887
    const v2, 0x7f110096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 889
    .local v0, "image":Landroid/widget/ImageView;
    if-eqz p4, :cond_0

    .line 890
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 891
    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 894
    :cond_0
    return-object v1

    .line 882
    .end local v0    # "image":Landroid/widget/ImageView;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    move-object v1, p2

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method private static createThumbnail(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;
    .locals 23
    .param p0, "size"    # Landroid/graphics/Point;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "imageBytes"    # [B
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "resId"    # I
    .param p6, "rotation"    # I
    .param p7, "leftAligned"    # Z

    .prologue
    .line 629
    move-object/from16 v0, p0

    iget v6, v0, Landroid/graphics/Point;->x:I

    .line 630
    .local v6, "width":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/graphics/Point;->y:I

    .line 633
    .local v7, "height":I
    if-eqz p2, :cond_1

    .line 634
    new-instance v1, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;

    .line 635
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p6

    .line 634
    invoke-direct/range {v1 .. v10}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 643
    .local v1, "cropTask":Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->getImageBounds()Landroid/graphics/Point;

    move-result-object v19

    .line 644
    .local v19, "bounds":Landroid/graphics/Point;
    if-eqz v19, :cond_0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-nez v2, :cond_3

    .line 645
    :cond_0
    const/4 v2, 0x0

    .line 662
    :goto_1
    return-object v2

    .line 636
    .end local v1    # "cropTask":Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;
    .end local v19    # "bounds":Landroid/graphics/Point;
    :cond_1
    if-eqz p3, :cond_2

    .line 637
    new-instance v1, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;

    .line 638
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v1

    move-object/from16 v3, p3

    move/from16 v5, p6

    .line 637
    invoke-direct/range {v2 .. v10}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;-><init>([BLandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .line 639
    .restart local v1    # "cropTask":Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;
    goto :goto_0

    .line 640
    .end local v1    # "cropTask":Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;
    :cond_2
    new-instance v1, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;

    .line 641
    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v8, v1

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v13, p6

    move v14, v6

    move v15, v7

    .line 640
    invoke-direct/range {v8 .. v18}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;-><init>(Landroid/content/Context;Landroid/content/res/Resources;ILandroid/graphics/RectF;IIIZZLjava/lang/Runnable;)V

    .restart local v1    # "cropTask":Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;
    goto :goto_0

    .line 648
    .restart local v19    # "bounds":Landroid/graphics/Point;
    :cond_3
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 649
    .local v21, "rotateMatrix":Landroid/graphics/Matrix;
    move/from16 v0, p6

    int-to-float v2, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 650
    const/4 v2, 0x2

    new-array v0, v2, [F

    move-object/from16 v22, v0

    const/4 v2, 0x0

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v22, v2

    const/4 v2, 0x1

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v22, v2

    .line 651
    .local v22, "rotatedBounds":[F
    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 652
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v22, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v22, v2

    .line 653
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v22, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v22, v2

    .line 656
    const/4 v2, 0x0

    aget v2, v22, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v22, v3

    float-to-int v3, v3

    .line 655
    move/from16 v0, p7

    invoke-static {v2, v3, v6, v7, v0}, Lcom/android/launcher4/WallpaperCropActivity;->getMaxCropRect(IIIIZ)Landroid/graphics/RectF;

    move-result-object v20

    .line 657
    .local v20, "cropRect":Landroid/graphics/RectF;
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->setCropBounds(Landroid/graphics/RectF;)V

    .line 659
    invoke-virtual {v1}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->cropBitmap()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 660
    invoke-virtual {v1}, Lcom/android/launcher4/WallpaperCropActivity$BitmapCropTask;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 662
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private findBundledWallpapers()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0x18

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 733
    .local v0, "bundledWallpapers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getWallpaperArrayResourceId()Landroid/util/Pair;

    move-result-object v1

    .line 734
    .local v1, "r":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/ApplicationInfo;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 736
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 737
    .local v2, "wallpaperRes":Landroid/content/res/Resources;
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v4, v3}, Lcom/android/launcher4/WallpaperPickerActivity;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 742
    .end local v2    # "wallpaperRes":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v0

    .line 738
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/graphics/Point;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 622
    new-instance v0, Landroid/graphics/Point;

    const v1, 0x7f0d0004

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 623
    const v2, 0x7f0d0005

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 622
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getDefaultWallpaperInfo()Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;
    .locals 15

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 746
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 747
    .local v4, "sysRes":Landroid/content/res/Resources;
    const-string v1, "default_wallpaper"

    const-string v3, "drawable"

    const-string v14, "android"

    invoke-virtual {v4, v1, v3, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 749
    .local v5, "resId":I
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "default_thumb.jpg"

    invoke-direct {v8, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 750
    .local v8, "defaultThumbFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 751
    .local v12, "thumb":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 752
    .local v9, "defaultWallpaperExists":Z
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 753
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 754
    const/4 v9, 0x1

    .line 776
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 777
    new-instance v2, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v4, v5, v1}, Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;-><init>(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)V

    .line 779
    :cond_1
    return-object v2

    .line 756
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 757
    .local v11, "res":Landroid/content/res/Resources;
    invoke-static {v11}, Lcom/android/launcher4/WallpaperPickerActivity;->getDefaultThumbnailSize(Landroid/content/res/Resources;)Landroid/graphics/Point;

    move-result-object v0

    .line 758
    .local v0, "defaultThumbSize":Landroid/graphics/Point;
    invoke-static {v11, v5}, Lcom/android/launcher4/WallpaperCropActivity;->getRotationFromExif(Landroid/content/res/Resources;I)I

    move-result v6

    .local v6, "rotation":I
    move-object v1, p0

    move-object v3, v2

    .line 759
    invoke-static/range {v0 .. v7}, Lcom/android/launcher4/WallpaperPickerActivity;->createThumbnail(Landroid/graphics/Point;Landroid/content/Context;Landroid/net/Uri;[BLandroid/content/res/Resources;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 761
    if-eqz v12, :cond_0

    .line 763
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 765
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher4/WallpaperPickerActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v13

    .line 767
    .local v13, "thumbFileStream":Ljava/io/FileOutputStream;
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    const/4 v9, 0x1

    goto :goto_0

    .line 769
    .end local v13    # "thumbFileStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 770
    .local v10, "e":Ljava/io/IOException;
    const-string v1, "Launcher.WallpaperPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Error while writing default wallpaper thumbnail to file "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private initializeScrollForRtl()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method private populateWallpapersFromAdapter(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;ZZ)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;
    .param p3, "addLongPressHandler"    # Z
    .param p4, "selectFirstTile"    # Z

    .prologue
    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 579
    return-void

    .line 566
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, p1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 567
    .local v2, "thumbnail":Landroid/widget/FrameLayout;
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 568
    invoke-virtual {p2, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;

    .line 569
    .local v1, "info":Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 570
    invoke-virtual {v1, v2}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;->setView(Landroid/view/View;)V

    .line 571
    if-eqz p3, :cond_1

    .line 572
    invoke-direct {p0, v2}, Lcom/android/launcher4/WallpaperPickerActivity;->addLongPressHandler(Landroid/view/View;)V

    .line 574
    :cond_1
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 576
    iget-object v3, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v3, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 565
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static setWallpaperItemPaddingToZero(Landroid/widget/FrameLayout;)V
    .locals 2
    .param p0, "frameLayout"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v0, 0x0

    .line 721
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 722
    new-instance v0, Lcom/android/launcher4/WallpaperPickerActivity$ZeroPaddingDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity$ZeroPaddingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 723
    return-void
.end method

.method private updateTileIndices()V
    .locals 19

    .prologue
    .line 582
    const v15, 0x7f110092

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 583
    .local v7, "masterWallpaperList":Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 584
    .local v2, "childCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 587
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v8, 0x0

    .line 588
    .local v8, "numTiles":I
    const/4 v9, 0x0

    .local v9, "passNum":I
    :goto_0
    const/4 v15, 0x2

    if-lt v9, v15, :cond_0

    .line 619
    return-void

    .line 589
    :cond_0
    const/4 v14, 0x0

    .line 590
    .local v14, "tileIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v2, :cond_1

    .line 588
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 591
    :cond_1
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 596
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;

    if-eqz v15, :cond_2

    .line 597
    move-object v11, v7

    .line 598
    .local v11, "subList":Landroid/widget/LinearLayout;
    move v13, v3

    .line 599
    .local v13, "subListStart":I
    add-int/lit8 v12, v3, 0x1

    .line 606
    .local v12, "subListEnd":I
    :goto_2
    move v5, v13

    .local v5, "j":I
    :goto_3
    if-lt v5, v12, :cond_3

    .line 590
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5    # "j":I
    .end local v11    # "subList":Landroid/widget/LinearLayout;
    .end local v12    # "subListEnd":I
    .end local v13    # "subListStart":I
    :cond_2
    move-object v11, v1

    .line 601
    check-cast v11, Landroid/widget/LinearLayout;

    .line 602
    .restart local v11    # "subList":Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    .line 603
    .restart local v13    # "subListStart":I
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v12

    .restart local v12    # "subListEnd":I
    goto :goto_2

    .line 607
    .restart local v5    # "j":I
    :cond_3
    invoke-virtual {v11, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;

    .line 608
    .local v4, "info":Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;
    invoke-virtual {v4}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;->isNamelessWallpaper()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 609
    if-nez v9, :cond_5

    .line 610
    add-int/lit8 v8, v8, 0x1

    .line 606
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 612
    :cond_5
    const v15, 0x7f0c0006

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 613
    .local v6, "label":Ljava/lang/CharSequence;
    invoke-virtual {v4, v6}, Lcom/android/launcher4/WallpaperPickerActivity$WallpaperTileInfo;->onIndexUpdated(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method


# virtual methods
.method public enableRotation()Z
    .locals 1

    .prologue
    .line 524
    invoke-super {p0}, Lcom/android/launcher4/WallpaperCropActivity;->enableRotation()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher4/Launcher;->sForceEnableRotation:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCropView()Lcom/android/launcher4/CropView;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mCropView:Lcom/android/launcher4/CropView;

    return-object v0
.end method

.method public getSavedImages()Lcom/android/launcher4/SavedWallpaperImages;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mSavedImages:Lcom/android/launcher4/SavedWallpaperImages;

    return-object v0
.end method

.method protected getThumbnailOfLastPhoto()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 528
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 529
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 530
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    .line 531
    const-string v4, "datetaken"

    aput-object v4, v2, v10

    .line 532
    const-string v5, "datetaken DESC LIMIT 1"

    move-object v4, v3

    .line 528
    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 533
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 534
    .local v8, "thumb":Landroid/graphics/Bitmap;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 536
    .local v7, "id":I
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 537
    int-to-long v4, v7

    .line 536
    invoke-static {v0, v4, v5, v10, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 539
    .end local v7    # "id":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 540
    return-object v8
.end method

.method public getWallpaperArrayResourceId()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const v4, 0x7f080002

    .line 787
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 789
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 790
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v3, Landroid/util/Pair;

    const v4, 0x7f080002

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v3

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected init()V
    .locals 25

    .prologue
    .line 240
    const v21, 0x7f040031

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->setContentView(I)V

    .line 242
    const v21, 0x7f11008f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher4/CropView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/WallpaperPickerActivity;->mCropView:Lcom/android/launcher4/CropView;

    .line 243
    const v21, 0x7f110090

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mCropView:Lcom/android/launcher4/CropView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/launcher4/WallpaperPickerActivity$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity$1;-><init>(Lcom/android/launcher4/WallpaperPickerActivity;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/launcher4/CropView;->setTouchCallback(Lcom/android/launcher4/CropView$TouchCallback;)V

    .line 292
    new-instance v21, Lcom/android/launcher4/WallpaperPickerActivity$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity$2;-><init>(Lcom/android/launcher4/WallpaperPickerActivity;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    .line 317
    new-instance v21, Lcom/android/launcher4/WallpaperPickerActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity$3;-><init>(Lcom/android/launcher4/WallpaperPickerActivity;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/WallpaperPickerActivity;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/WallpaperPickerActivity;->findBundledWallpapers()Ljava/util/ArrayList;

    move-result-object v20

    .line 339
    .local v20, "wallpapers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/WallpaperPickerActivity$ResourceWallpaperInfo;>;"
    const v21, 0x7f110093

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    .line 340
    new-instance v10, Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 341
    .local v10, "ia":Lcom/android/launcher4/WallpaperPickerActivity$BuiltInWallpapersAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/android/launcher4/WallpaperPickerActivity;->populateWallpapersFromAdapter(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;ZZ)V

    .line 344
    new-instance v21, Lcom/android/launcher4/SavedWallpaperImages;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/SavedWallpaperImages;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/WallpaperPickerActivity;->mSavedImages:Lcom/android/launcher4/SavedWallpaperImages;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mSavedImages:Lcom/android/launcher4/SavedWallpaperImages;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher4/SavedWallpaperImages;->loadThumbnailsAndImageIdList()V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mSavedImages:Lcom/android/launcher4/SavedWallpaperImages;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher4/WallpaperPickerActivity;->populateWallpapersFromAdapter(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;ZZ)V

    .line 350
    const v21, 0x7f110094

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 351
    .local v12, "liveWallpapersView":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/android/launcher4/LiveWallpaperListAdapter;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/launcher4/LiveWallpaperListAdapter;-><init>(Landroid/content/Context;)V

    .line 352
    .local v6, "a":Lcom/android/launcher4/LiveWallpaperListAdapter;
    new-instance v21, Lcom/android/launcher4/WallpaperPickerActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6}, Lcom/android/launcher4/WallpaperPickerActivity$4;-><init>(Lcom/android/launcher4/WallpaperPickerActivity;Landroid/widget/LinearLayout;Lcom/android/launcher4/LiveWallpaperListAdapter;)V

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/launcher4/LiveWallpaperListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 361
    const-string v21, "TAAA"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "init mliveWallpaper == "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    move/from16 v21, v0

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 v21, 0x8

    :goto_0
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    const/16 v21, 0x8

    :goto_1
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    const v21, 0x7f110095

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 369
    .local v17, "thirdPartyWallpapersView":Landroid/widget/LinearLayout;
    new-instance v16, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;-><init>(Landroid/content/Context;)V

    .line 370
    .local v16, "ta":Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher4/WallpaperPickerActivity;->populateWallpapersFromAdapter(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;ZZ)V

    .line 373
    const v21, 0x7f110092

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 374
    .local v13, "masterWallpaperList":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v21

    .line 375
    const v22, 0x7f040032

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 374
    check-cast v15, Landroid/widget/FrameLayout;

    .line 376
    .local v15, "pickImageTile":Landroid/widget/FrameLayout;
    invoke-static {v15}, Lcom/android/launcher4/WallpaperPickerActivity;->setWallpaperItemPaddingToZero(Landroid/widget/FrameLayout;)V

    .line 377
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getThumbnailOfLastPhoto()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 381
    .local v11, "lastPhoto":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_0

    .line 383
    const v21, 0x7f110096

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 384
    .local v9, "galleryThumbnailBg":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getThumbnailOfLastPhoto()Landroid/graphics/Bitmap;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f090008

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 386
    .local v8, "colorOverlay":I
    sget-object v21, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v21

    invoke-virtual {v9, v8, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 390
    .end local v8    # "colorOverlay":I
    .end local v9    # "galleryThumbnailBg":Landroid/widget/ImageView;
    :cond_0
    new-instance v14, Lcom/android/launcher4/WallpaperPickerActivity$PickImageInfo;

    invoke-direct {v14}, Lcom/android/launcher4/WallpaperPickerActivity$PickImageInfo;-><init>()V

    .line 391
    .local v14, "pickImageInfo":Lcom/android/launcher4/WallpaperPickerActivity$PickImageInfo;
    invoke-virtual {v15, v14}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 392
    invoke-virtual {v14, v15}, Lcom/android/launcher4/WallpaperPickerActivity$PickImageInfo;->setView(Landroid/view/View;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mThumbnailOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    invoke-virtual {v14, v15}, Lcom/android/launcher4/WallpaperPickerActivity$PickImageInfo;->setView(Landroid/view/View;)V

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/WallpaperPickerActivity;->updateTileIndices()V

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/WallpaperPickerActivity;->initializeScrollForRtl()V

    .line 402
    new-instance v18, Landroid/animation/LayoutTransition;

    invoke-direct/range {v18 .. v18}, Landroid/animation/LayoutTransition;-><init>()V

    .line 403
    .local v18, "transitioner":Landroid/animation/LayoutTransition;
    const-wide/16 v22, 0xc8

    move-object/from16 v0, v18

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 404
    const/16 v21, 0x1

    const-wide/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 405
    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpapersView:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 411
    sget-object v21, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0a0014

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 412
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lshare/ResValue;->btn_setwallpaper:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 413
    .local v19, "wallpaperSetView":Landroid/widget/TextView;
    if-eqz v19, :cond_1

    .line 414
    new-instance v21, Lcom/android/launcher4/WallpaperPickerActivity$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity$5;-><init>(Lcom/android/launcher4/WallpaperPickerActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    .end local v19    # "wallpaperSetView":Landroid/widget/TextView;
    :cond_1
    :goto_2
    new-instance v21, Lcom/android/launcher4/WallpaperPickerActivity$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity$7;-><init>(Lcom/android/launcher4/WallpaperPickerActivity;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher4/WallpaperPickerActivity;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 517
    return-void

    .line 362
    .end local v11    # "lastPhoto":Landroid/graphics/Bitmap;
    .end local v13    # "masterWallpaperList":Landroid/widget/LinearLayout;
    .end local v14    # "pickImageInfo":Lcom/android/launcher4/WallpaperPickerActivity$PickImageInfo;
    .end local v15    # "pickImageTile":Landroid/widget/FrameLayout;
    .end local v16    # "ta":Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;
    .end local v17    # "thirdPartyWallpapersView":Landroid/widget/LinearLayout;
    .end local v18    # "transitioner":Landroid/animation/LayoutTransition;
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 363
    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 425
    .restart local v11    # "lastPhoto":Landroid/graphics/Bitmap;
    .restart local v13    # "masterWallpaperList":Landroid/widget/LinearLayout;
    .restart local v14    # "pickImageInfo":Lcom/android/launcher4/WallpaperPickerActivity$PickImageInfo;
    .restart local v15    # "pickImageTile":Landroid/widget/FrameLayout;
    .restart local v16    # "ta":Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;
    .restart local v17    # "thirdPartyWallpapersView":Landroid/widget/LinearLayout;
    .restart local v18    # "transitioner":Landroid/animation/LayoutTransition;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 426
    .local v7, "actionBar":Landroid/app/ActionBar;
    const/high16 v21, 0x7f040000

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 427
    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 428
    invoke-virtual {v7}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v21

    .line 429
    new-instance v22, Lcom/android/launcher4/WallpaperPickerActivity$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher4/WallpaperPickerActivity$6;-><init>(Lcom/android/launcher4/WallpaperPickerActivity;)V

    .line 428
    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 697
    const/4 v4, 0x5

    if-ne p1, v4, :cond_1

    if-ne p2, v6, :cond_1

    .line 698
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 699
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 700
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/android/launcher4/WallpaperPickerActivity;->addTemporaryWallpaperTile(Landroid/net/Uri;)V

    .line 718
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    const/4 v4, 0x6

    if-ne p1, v4, :cond_2

    .line 703
    invoke-virtual {p0, v6}, Lcom/android/launcher4/WallpaperPickerActivity;->setResult(I)V

    .line 704
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->finish()V

    goto :goto_0

    .line 705
    :cond_2
    const/4 v4, 0x7

    if-ne p1, v4, :cond_0

    .line 706
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    .line 707
    .local v3, "wm":Landroid/app/WallpaperManager;
    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mLiveWallpaperInfoOnPickerLaunch:Landroid/app/WallpaperInfo;

    .line 708
    .local v1, "oldLiveWallpaper":Landroid/app/WallpaperInfo;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 710
    .local v0, "newLiveWallpaper":Landroid/app/WallpaperInfo;
    if-eqz v0, :cond_0

    .line 711
    if-eqz v1, :cond_3

    .line 712
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 714
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/launcher4/WallpaperPickerActivity;->setResult(I)V

    .line 715
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/launcher4/WallpaperPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "live_wallpaper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    .line 213
    invoke-super {p0, p1}, Lcom/android/launcher4/WallpaperCropActivity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method public onLiveWallpaperPickerLaunch()V
    .locals 1

    .prologue
    .line 828
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mLiveWallpaperInfoOnPickerLaunch:Landroid/app/WallpaperInfo;

    .line 829
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 218
    invoke-super {p0, p1}, Lcom/android/launcher4/WallpaperCropActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 219
    const-string v2, "live_wallpaper"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    .line 220
    const v2, 0x7f110094

    invoke-virtual {p0, v2}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 221
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f110093

    invoke-virtual {p0, v2}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, "sv":Landroid/view/View;
    const-string v2, "TAAA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onNewIntent mliveWallpaper == "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v0, :cond_0

    .line 224
    const-string v2, "TAAA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onNewIntent mliveWallpaper 11== "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v2, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :cond_0
    if-eqz v1, :cond_1

    .line 229
    const-string v2, "TAAA"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onNewIntent mliveWallpaper 22== "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v2, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mliveWallpaper:I

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 225
    goto :goto_0

    :cond_3
    move v3, v4

    .line 230
    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 557
    const-string v2, "TEMP_WALLPAPER_TILES"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 558
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 561
    return-void

    .line 558
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 559
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/launcher4/WallpaperPickerActivity;->addTemporaryWallpaperTile(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 553
    const-string v0, "TEMP_WALLPAPER_TILES"

    iget-object v1, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mTempWallpaperTiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 554
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 544
    invoke-super {p0}, Lcom/android/launcher4/WallpaperCropActivity;->onStop()V

    .line 545
    const v0, 0x7f110090

    invoke-virtual {p0, v0}, Lcom/android/launcher4/WallpaperPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    .line 546
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 548
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 550
    :cond_0
    return-void
.end method

.method public setWallpaperStripYOffset(F)V
    .locals 3
    .param p1, "offset"    # F

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/launcher4/WallpaperPickerActivity;->mWallpaperStrip:Landroid/view/View;

    float-to-int v1, p1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 236
    return-void
.end method
