.class public Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThirdPartyWallpaperPickerListAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LiveWallpaperListAdapter"


# instance fields
.field private final mIconSize:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mThirdPartyWallpaperPickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mThirdPartyWallpaperPickers:Ljava/util/List;

    .line 65
    const-string v13, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0006

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mIconSize:I

    .line 68
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 70
    .local v12, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string v13, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v11, "pickWallpaperIntent":Landroid/content/Intent;
    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 75
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v10, Landroid/content/Intent;

    const-string v13, "android.intent.action.GET_CONTENT"

    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v10, "pickImageIntent":Landroid/content/Intent;
    const-string v13, "image/*"

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 79
    .local v5, "imagePickerActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    new-array v4, v13, [Landroid/content/ComponentName;

    .line 80
    .local v4, "imageActivities":[Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lt v3, v13, :cond_1

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 106
    return-void

    .line 81
    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v1, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 82
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    new-instance v13, Landroid/content/ComponentName;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v13, v4, v3

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 88
    .local v7, "info":Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v14, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v8, "itemComponentName":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "itemPackageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 93
    const-string v14, "com.android.launcher"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 94
    const-string v14, "com.android.wallpaper.livepicker"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 98
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_4

    .line 104
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mThirdPartyWallpaperPickers:Ljava/util/List;

    new-instance v15, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;

    invoke-direct {v15, v7}, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;-><init>(Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 100
    .local v6, "imagePickerActivityInfo":Landroid/content/pm/ResolveInfo;
    iget-object v15, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 99
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 100
    if-eqz v15, :cond_3

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mThirdPartyWallpaperPickers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mThirdPartyWallpaperPickers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->getItem(I)Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 123
    if-nez p2, :cond_0

    .line 124
    iget-object v4, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040035

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .local v3, "view":Landroid/view/View;
    :goto_0
    move-object v4, v3

    .line 129
    check-cast v4, Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/android/launcher4/WallpaperPickerActivity;->setWallpaperItemPaddingToZero(Landroid/widget/FrameLayout;)V

    .line 131
    iget-object v4, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mThirdPartyWallpaperPickers:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;

    invoke-static {v4}, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;->access$0(Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter$ThirdPartyWallpaperTile;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 132
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    const v4, 0x7f110097

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    .local v2, "label":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mIconSize:I

    iget v6, p0, Lcom/android/launcher4/ThirdPartyWallpaperPickerListAdapter;->mIconSize:I

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 136
    invoke-virtual {v2, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 137
    return-object v3

    .line 126
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "label":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    move-object v3, p2

    .restart local v3    # "view":Landroid/view/View;
    goto :goto_0
.end method
