.class public Lcom/android/launcher4/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Hotseat"


# instance fields
.field private mAllAppsButtonRank:I

.field private mContent:Lcom/android/launcher4/CellLayout;

.field private mIsLandscape:Z

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private mTransposeLayoutWithOrientation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher4/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher4/Hotseat;->mIsLandscape:Z

    .line 77
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hotseat orientation mIsLandscape == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher4/Hotseat;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/Hotseat;)Lcom/android/launcher4/Launcher;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mLauncher:Lcom/android/launcher4/Launcher;

    return-object v0
.end method

.method private hasVerticalHotseat()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/launcher4/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method addAllAppsFolder(Lcom/android/launcher4/IconCache;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/launcher4/Launcher;Lcom/android/launcher4/Workspace;)V
    .locals 17
    .param p1, "iconCache"    # Lcom/android/launcher4/IconCache;
    .param p4, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p5, "workspace"    # Lcom/android/launcher4/Workspace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher4/IconCache;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/android/launcher4/Launcher;",
            "Lcom/android/launcher4/Workspace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, "allApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    .local p3, "onWorkspace":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    sget-boolean v2, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-eqz v2, :cond_1

    .line 302
    new-instance v3, Lcom/android/launcher4/FolderInfo;

    invoke-direct {v3}, Lcom/android/launcher4/FolderInfo;-><init>()V

    .line 304
    .local v3, "fi":Lcom/android/launcher4/FolderInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/Hotseat;->mAllAppsButtonRank:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Hotseat;->getCellXFromOrder(I)I

    move-result v2

    iput v2, v3, Lcom/android/launcher4/FolderInfo;->cellX:I

    .line 305
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/Hotseat;->mAllAppsButtonRank:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher4/Hotseat;->getCellYFromOrder(I)I

    move-result v2

    iput v2, v3, Lcom/android/launcher4/FolderInfo;->cellY:I

    .line 306
    const/4 v2, 0x1

    iput v2, v3, Lcom/android/launcher4/FolderInfo;->spanX:I

    .line 307
    const/4 v2, 0x1

    iput v2, v3, Lcom/android/launcher4/FolderInfo;->spanY:I

    .line 308
    const-wide/16 v6, -0x65

    iput-wide v6, v3, Lcom/android/launcher4/FolderInfo;->container:J

    .line 309
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/Hotseat;->mAllAppsButtonRank:I

    int-to-long v6, v2

    iput-wide v6, v3, Lcom/android/launcher4/FolderInfo;->screenId:J

    .line 310
    const/4 v2, 0x2

    iput v2, v3, Lcom/android/launcher4/FolderInfo;->itemType:I

    .line 311
    const-string v2, "More Apps"

    iput-object v2, v3, Lcom/android/launcher4/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 312
    iget-wide v4, v3, Lcom/android/launcher4/FolderInfo;->container:J

    .line 313
    iget-wide v6, v3, Lcom/android/launcher4/FolderInfo;->screenId:J

    iget v8, v3, Lcom/android/launcher4/FolderInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher4/FolderInfo;->cellY:I

    const/4 v10, 0x0

    move-object/from16 v2, p4

    .line 312
    invoke-static/range {v2 .. v10}, Lcom/android/launcher4/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V

    .line 314
    const v2, 0x7f04001c

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Hotseat;->getLayout()Lcom/android/launcher4/CellLayout;

    move-result-object v4

    .line 314
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-static {v2, v0, v4, v3, v1}, Lcom/android/launcher4/FolderIcon;->fromXml(ILcom/android/launcher4/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher4/FolderInfo;Lcom/android/launcher4/IconCache;)Lcom/android/launcher4/FolderIcon;

    move-result-object v5

    .line 316
    .local v5, "folder":Lcom/android/launcher4/FolderIcon;
    iget-wide v6, v3, Lcom/android/launcher4/FolderInfo;->container:J

    iget-wide v8, v3, Lcom/android/launcher4/FolderInfo;->screenId:J

    iget v10, v3, Lcom/android/launcher4/FolderInfo;->cellX:I

    .line 317
    iget v11, v3, Lcom/android/launcher4/FolderInfo;->cellY:I

    iget v12, v3, Lcom/android/launcher4/FolderInfo;->spanX:I

    iget v13, v3, Lcom/android/launcher4/FolderInfo;->spanY:I

    move-object/from16 v4, p5

    .line 316
    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher4/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 328
    .end local v3    # "fi":Lcom/android/launcher4/FolderInfo;
    .end local v5    # "folder":Lcom/android/launcher4/FolderIcon;
    :cond_1
    return-void

    .line 319
    .restart local v3    # "fi":Lcom/android/launcher4/FolderInfo;
    .restart local v5    # "folder":Lcom/android/launcher4/FolderIcon;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher4/AppInfo;

    .line 320
    .local v15, "info":Lcom/android/launcher4/AppInfo;
    iget-object v4, v15, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 321
    .local v14, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 322
    const-string v4, "Hotseat"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Adding to \'more apps\': "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v15, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v15}, Lcom/android/launcher4/AppInfo;->makeShortcut()Lcom/android/launcher4/ShortcutInfo;

    move-result-object v16

    .line 324
    .local v16, "si":Lcom/android/launcher4/ShortcutInfo;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/launcher4/FolderInfo;->add(Lcom/android/launcher4/ShortcutInfo;)V

    goto :goto_0
.end method

.method addAppsToAllAppsFolder(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    sget-boolean v5, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-eqz v5, :cond_0

    .line 332
    iget-object v5, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    iget v6, p0, Lcom/android/launcher4/Hotseat;->mAllAppsButtonRank:I

    invoke-virtual {p0, v6}, Lcom/android/launcher4/Hotseat;->getCellXFromOrder(I)I

    move-result v6

    .line 333
    iget v7, p0, Lcom/android/launcher4/Hotseat;->mAllAppsButtonRank:I

    invoke-virtual {p0, v7}, Lcom/android/launcher4/Hotseat;->getCellYFromOrder(I)I

    move-result v7

    .line 332
    invoke-virtual {v5, v6, v7}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 334
    .local v4, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 336
    .local v1, "fi":Lcom/android/launcher4/FolderIcon;
    instance-of v5, v4, Lcom/android/launcher4/FolderIcon;

    if-eqz v5, :cond_0

    move-object v1, v4

    .line 337
    check-cast v1, Lcom/android/launcher4/FolderIcon;

    .line 342
    invoke-virtual {v1}, Lcom/android/launcher4/FolderIcon;->getFolderInfo()Lcom/android/launcher4/FolderInfo;

    move-result-object v2

    .line 343
    .local v2, "info":Lcom/android/launcher4/FolderInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 348
    .end local v1    # "fi":Lcom/android/launcher4/FolderIcon;
    .end local v2    # "info":Lcom/android/launcher4/FolderInfo;
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    return-void

    .line 343
    .restart local v1    # "fi":Lcom/android/launcher4/FolderIcon;
    .restart local v2    # "info":Lcom/android/launcher4/FolderInfo;
    .restart local v4    # "v":Landroid/view/View;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppInfo;

    .line 344
    .local v0, "a":Lcom/android/launcher4/AppInfo;
    invoke-virtual {v0}, Lcom/android/launcher4/AppInfo;->makeShortcut()Lcom/android/launcher4/ShortcutInfo;

    move-result-object v3

    .line 345
    .local v3, "si":Lcom/android/launcher4/ShortcutInfo;
    invoke-virtual {v2, v3}, Lcom/android/launcher4/FolderInfo;->add(Lcom/android/launcher4/ShortcutInfo;)V

    goto :goto_0
.end method

.method addDefultIcon(III)V
    .locals 12
    .param p1, "icon"    # I
    .param p2, "title"    # I
    .param p3, "index"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 255
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 256
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040006

    .line 257
    iget-object v2, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    .line 256
    invoke-virtual {v8, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 258
    .local v1, "newBtn":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 259
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/launcher4/Utilities;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    invoke-virtual {v1, v11, v7, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 262
    invoke-virtual {v6, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mLauncher:Lcom/android/launcher4/Launcher;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 265
    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    .line 264
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    :cond_0
    new-instance v0, Lcom/android/launcher4/Hotseat$2;

    invoke-direct {v0, p0}, Lcom/android/launcher4/Hotseat$2;-><init>(Lcom/android/launcher4/Hotseat;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    invoke-virtual {p0, p3}, Lcom/android/launcher4/Hotseat;->getCellXFromOrder(I)I

    move-result v9

    .line 281
    .local v9, "x":I
    invoke-virtual {p0, p3}, Lcom/android/launcher4/Hotseat;->getCellYFromOrder(I)I

    move-result v10

    .line 282
    .local v10, "y":I
    new-instance v4, Lcom/android/launcher4/CellLayout$LayoutParams;

    invoke-direct {v4, v9, v10, v5, v5}, Lcom/android/launcher4/CellLayout$LayoutParams;-><init>(IIII)V

    .line 283
    .local v4, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iput-boolean v3, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->canReorder:Z

    .line 284
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    const/4 v2, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/CellLayout$LayoutParams;Z)Z

    .line 285
    return-void
.end method

.method addDefultIcon(ILjava/lang/String;I)V
    .locals 12
    .param p1, "icon"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 200
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 202
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040006

    iget-object v2, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    .line 201
    invoke-virtual {v8, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 203
    .local v1, "newBtn":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 204
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/launcher4/Utilities;->resizeHotseatIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {v1, v11, v7, v11, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {p0, p2}, Lcom/android/launcher4/Hotseat;->findIntentFromPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 207
    const-string v0, "navi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c008b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_0
    :goto_0
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 221
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mLauncher:Lcom/android/launcher4/Launcher;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 223
    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    .line 222
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    :cond_1
    new-instance v0, Lcom/android/launcher4/Hotseat$1;

    invoke-direct {v0, p0, p2, v1}, Lcom/android/launcher4/Hotseat$1;-><init>(Lcom/android/launcher4/Hotseat;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {p0, p3}, Lcom/android/launcher4/Hotseat;->getCellXFromOrder(I)I

    move-result v9

    .line 246
    .local v9, "x":I
    invoke-virtual {p0, p3}, Lcom/android/launcher4/Hotseat;->getCellYFromOrder(I)I

    move-result v10

    .line 247
    .local v10, "y":I
    new-instance v4, Lcom/android/launcher4/CellLayout$LayoutParams;

    invoke-direct {v4, v9, v10, v5, v5}, Lcom/android/launcher4/CellLayout$LayoutParams;-><init>(IIII)V

    .line 248
    .local v4, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iput-boolean v3, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->canReorder:Z

    .line 249
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    const/4 v2, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/CellLayout$LayoutParams;Z)Z

    .line 250
    return-void

    .line 209
    .end local v4    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_2
    const-string v0, "com.syu.radio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :cond_3
    const-string v0, "com.syu.music"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0077

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :cond_4
    const-string v0, "com.syu.video"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0074

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 215
    :cond_5
    const-string v0, "com.syu.bt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0078

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 217
    :cond_6
    const-string v0, "com.syu.settings"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method findIntentFromPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 351
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    .local v2, "mainIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 356
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 357
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 358
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 359
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v2    # "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const/high16 v4, 0x10200000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 363
    new-instance v4, Landroid/content/ComponentName;

    .line 364
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v4, v2

    .line 367
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v4
.end method

.method getCellCoordinates(II)Landroid/graphics/Rect;
    .locals 11
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .prologue
    .line 136
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 137
    .local v5, "coords":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 138
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 140
    .local v10, "hotseatInParent":[I
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    const/4 v1, 0x0

    .line 139
    invoke-static {p0, v0, v10, v1}, Lcom/android/launcher4/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    .line 141
    const/4 v0, 0x0

    aget v0, v10, v0

    const/4 v1, 0x1

    aget v1, v10, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 144
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getCellContentWidth()I

    move-result v7

    .line 145
    .local v7, "cWidth":I
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getCellContentHeight()I

    move-result v6

    .line 146
    .local v6, "cHeight":I
    const/4 v0, 0x0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v7

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v8, v0

    .line 148
    .local v8, "cellPaddingX":I
    const/4 v0, 0x0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, v6

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v9, v0

    .line 149
    .local v9, "cellPaddingY":I
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 151
    return-object v5
.end method

.method getCellXFromOrder(I)I
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/launcher4/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "rank":I
    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 2
    .param p1, "rank"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/launcher4/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLayout()Lcom/android/launcher4/CellLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/launcher4/Hotseat;->hasVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getCountY()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    .end local p1    # "x":I
    :cond_0
    return p1
.end method

.method public isAllAppsButtonRank(I)Z
    .locals 2
    .param p1, "rank"    # I

    .prologue
    const/4 v0, 0x0

    .line 124
    sget-boolean v1, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/launcher4/Hotseat;->mAllAppsButtonRank:I

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 156
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 157
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 158
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 160
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    iget v2, v1, Lcom/android/launcher4/DeviceProfile;->hotseatAllAppsRank:I

    iput v2, p0, Lcom/android/launcher4/Hotseat;->mAllAppsButtonRank:I

    .line 161
    const v2, 0x7f110067

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/CellLayout;

    iput-object v2, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    .line 162
    iget-boolean v2, p0, Lcom/android/launcher4/Hotseat;->mIsLandscape:Z

    if-nez v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    iget v3, v1, Lcom/android/launcher4/DeviceProfile;->numHotseatIcons:F

    float-to-int v3, v3

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher4/CellLayout;->setGridSize(II)V

    .line 167
    :goto_0
    iget-object v2, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v2, v4}, Lcom/android/launcher4/CellLayout;->setIsHotseat(Z)V

    .line 168
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v2

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cell width = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher4/CellLayout;->getCellWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Cell Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 170
    iget-object v4, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher4/CellLayout;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->resetLayout()V

    .line 172
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    iget v3, v1, Lcom/android/launcher4/DeviceProfile;->numHotseatIcons:F

    float-to-int v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher4/CellLayout;->setGridSize(II)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetLayout()V
    .locals 8

    .prologue
    .line 175
    iget-object v5, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher4/CellLayout;->removeAllViewsInLayout()V

    .line 177
    sget-boolean v5, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v5, :cond_0

    .line 178
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v5

    iget v5, v5, Lshare/ResValue;->all_apps_button_icon:I

    .line 179
    const v6, 0x7f0c0027

    iget v7, p0, Lcom/android/launcher4/Hotseat;->mAllAppsButtonRank:I

    .line 178
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/launcher4/Hotseat;->addDefultIcon(III)V

    .line 180
    invoke-virtual {p0}, Lcom/android/launcher4/Hotseat;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 181
    const v6, 0x7f0a000c

    .line 180
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 181
    if-nez v5, :cond_0

    .line 182
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 183
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v2

    .line 184
    .local v2, "grid":Lcom/android/launcher4/DeviceProfile;
    iget-object v5, v2, Lcom/android/launcher4/DeviceProfile;->mDefualtIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 185
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 195
    .end local v0    # "app":Lcom/android/launcher4/LauncherAppState;
    .end local v1    # "count":I
    .end local v2    # "grid":Lcom/android/launcher4/DeviceProfile;
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_0
    return-void

    .line 188
    .restart local v0    # "app":Lcom/android/launcher4/LauncherAppState;
    .restart local v1    # "count":I
    .restart local v2    # "grid":Lcom/android/launcher4/DeviceProfile;
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    :cond_1
    iget-object v5, v2, Lcom/android/launcher4/DeviceProfile;->drawableArray:[I

    aget v6, v5, v3

    iget-object v5, v2, Lcom/android/launcher4/DeviceProfile;->nameArray:[Ljava/lang/String;

    aget-object v7, v5, v3

    .line 189
    iget v5, p0, Lcom/android/launcher4/Hotseat;->mAllAppsButtonRank:I

    if-ge v4, v5, :cond_2

    move v5, v4

    .line 188
    :goto_1
    invoke-virtual {p0, v6, v7, v5}, Lcom/android/launcher4/Hotseat;->addDefultIcon(ILjava/lang/String;I)V

    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_2
    add-int/lit8 v5, v4, 0x1

    goto :goto_1
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/launcher4/Hotseat;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher4/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 96
    return-void
.end method

.method public setup(Lcom/android/launcher4/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/launcher4/Hotseat;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 83
    new-instance v0, Lcom/android/launcher4/HotseatIconKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher4/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 84
    return-void
.end method
