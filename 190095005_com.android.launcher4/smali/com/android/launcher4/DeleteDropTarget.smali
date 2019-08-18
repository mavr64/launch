.class public Lcom/android/launcher4/DeleteDropTarget;
.super Lcom/android/launcher4/ButtonDropTarget;
.source "DeleteDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;
    }
.end annotation


# static fields
.field private static DELETE_ANIMATION_DURATION:I

.field private static FLING_DELETE_ANIMATION_DURATION:I

.field private static FLING_TO_DELETE_FRICTION:F

.field private static MODE_FLING_DELETE_ALONG_VECTOR:I

.field private static MODE_FLING_DELETE_TO_TRASH:I


# instance fields
.field private mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private final mFlingDeleteMode:I

.field private mOriginalTextColor:Landroid/content/res/ColorStateList;

.field private mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mWaitingForUninstall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x11d

    sput v0, Lcom/android/launcher4/DeleteDropTarget;->DELETE_ANIMATION_DURATION:I

    .line 52
    const/16 v0, 0x15e

    sput v0, Lcom/android/launcher4/DeleteDropTarget;->FLING_DELETE_ANIMATION_DURATION:I

    .line 53
    const v0, 0x3d0f5c29    # 0.035f

    sput v0, Lcom/android/launcher4/DeleteDropTarget;->FLING_TO_DELETE_FRICTION:F

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher4/DeleteDropTarget;->MODE_FLING_DELETE_TO_TRASH:I

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/android/launcher4/DeleteDropTarget;->MODE_FLING_DELETE_ALONG_VECTOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/DeleteDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher4/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget v0, Lcom/android/launcher4/DeleteDropTarget;->MODE_FLING_DELETE_ALONG_VECTOR:I

    iput v0, p0, Lcom/android/launcher4/DeleteDropTarget;->mFlingDeleteMode:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/DeleteDropTarget;->mWaitingForUninstall:Z

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/DeleteDropTarget;Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/launcher4/DeleteDropTarget;->completeDrop(Lcom/android/launcher4/DropTarget$DragObject;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/launcher4/DeleteDropTarget;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/launcher4/DeleteDropTarget;->mWaitingForUninstall:Z

    return-void
.end method

.method private animateToTrashAndCompleteDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 17
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v2

    .line 258
    .local v2, "dragLayer":Lcom/android/launcher4/DragLayer;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 259
    .local v4, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher4/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 260
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v3}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v7}, Lcom/android/launcher4/DragView;->getMeasuredHeight()I

    move-result v7

    .line 261
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher4/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher4/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v9

    .line 260
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7, v8, v9}, Lcom/android/launcher4/DeleteDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v5

    .line 262
    .local v5, "to":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float v6, v3, v7

    .line 264
    .local v6, "scale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v3}, Lcom/android/launcher4/SearchDropTargetBar;->deferOnDragEnd()V

    .line 265
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher4/DeleteDropTarget;->deferCompleteDropIfUninstalling(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 267
    new-instance v14, Lcom/android/launcher4/DeleteDropTarget$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/launcher4/DeleteDropTarget$1;-><init>(Lcom/android/launcher4/DeleteDropTarget;Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 280
    .local v14, "onAnimationEndRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3dcccccd    # 0.1f

    .line 281
    sget v11, Lcom/android/launcher4/DeleteDropTarget;->DELETE_ANIMATION_DURATION:I

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 282
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 283
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 280
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher4/DragLayer;->animateView(Lcom/android/launcher4/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 284
    return-void
.end method

.method private completeDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 14
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 319
    iget-object v7, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher4/ItemInfo;

    .line 320
    .local v7, "item":Lcom/android/launcher4/ItemInfo;
    iget-boolean v10, p0, Lcom/android/launcher4/DeleteDropTarget;->mWaitingForUninstall:Z

    .line 321
    .local v10, "wasWaitingForUninstall":Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mWaitingForUninstall:Z

    .line 322
    iget-object v11, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    invoke-direct {p0, v11, v7}, Lcom/android/launcher4/DeleteDropTarget;->isAllAppsApplication(Lcom/android/launcher4/DragSource;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v0, v7

    .line 324
    check-cast v0, Lcom/android/launcher4/AppInfo;

    .line 325
    .local v0, "appInfo":Lcom/android/launcher4/AppInfo;
    iget-object v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v12, v0, Lcom/android/launcher4/AppInfo;->componentName:Landroid/content/ComponentName;

    iget v13, v0, Lcom/android/launcher4/AppInfo;->flags:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher4/Launcher;->startApplicationUninstallActivity(Landroid/content/ComponentName;I)Z

    .line 380
    .end local v0    # "appInfo":Lcom/android/launcher4/AppInfo;
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    iget-boolean v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mWaitingForUninstall:Z

    if-nez v11, :cond_1

    .line 381
    iget-object v11, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    instance-of v11, v11, Lcom/android/launcher4/Folder;

    if-eqz v11, :cond_6

    .line 382
    iget-object v11, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    check-cast v11, Lcom/android/launcher4/Folder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/launcher4/Folder;->onUninstallActivityReturned(Z)V

    .line 387
    :cond_1
    :goto_1
    return-void

    .line 326
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher4/DeleteDropTarget;->isUninstallFromWorkspace(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v9, v7

    .line 327
    check-cast v9, Lcom/android/launcher4/ShortcutInfo;

    .line 328
    .local v9, "shortcut":Lcom/android/launcher4/ShortcutInfo;
    iget-object v11, v9, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v11, :cond_0

    iget-object v11, v9, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 329
    iget-object v11, v9, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 330
    .local v3, "componentName":Landroid/content/ComponentName;
    iget-object v4, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    .line 332
    .local v4, "dragSource":Lcom/android/launcher4/DragSource;
    invoke-virtual {p0}, Lcom/android/launcher4/DeleteDropTarget;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/launcher4/ShortcutInfo;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 331
    invoke-static {v11}, Lcom/android/launcher4/AppInfo;->initFlags(Landroid/content/pm/PackageInfo;)I

    move-result v5

    .line 334
    .local v5, "flags":I
    iget-object v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v11, v3, v5}, Lcom/android/launcher4/Launcher;->startApplicationUninstallActivity(Landroid/content/ComponentName;I)Z

    move-result v11

    .line 333
    iput-boolean v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mWaitingForUninstall:Z

    .line 335
    iget-boolean v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mWaitingForUninstall:Z

    if-eqz v11, :cond_0

    .line 336
    new-instance v2, Lcom/android/launcher4/DeleteDropTarget$2;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/launcher4/DeleteDropTarget$2;-><init>(Lcom/android/launcher4/DeleteDropTarget;Landroid/content/ComponentName;Lcom/android/launcher4/DragSource;)V

    .line 353
    .local v2, "checkIfUninstallWasSuccess":Ljava/lang/Runnable;
    iget-object v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v11, v2}, Lcom/android/launcher4/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 356
    .end local v2    # "checkIfUninstallWasSuccess":Ljava/lang/Runnable;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "dragSource":Lcom/android/launcher4/DragSource;
    .end local v5    # "flags":I
    .end local v9    # "shortcut":Lcom/android/launcher4/ShortcutInfo;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher4/DeleteDropTarget;->isWorkspaceOrFolderApplication(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 357
    iget-object v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v11, v7}, Lcom/android/launcher4/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    goto :goto_0

    .line 358
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher4/DeleteDropTarget;->isWorkspaceFolder(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v6, v7

    .line 360
    check-cast v6, Lcom/android/launcher4/FolderInfo;

    .line 361
    .local v6, "folderInfo":Lcom/android/launcher4/FolderInfo;
    iget-object v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v11, v6}, Lcom/android/launcher4/Launcher;->removeFolder(Lcom/android/launcher4/FolderInfo;)V

    .line 362
    iget-object v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v11, v6}, Lcom/android/launcher4/LauncherModel;->deleteFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher4/FolderInfo;)V

    goto :goto_0

    .line 363
    .end local v6    # "folderInfo":Lcom/android/launcher4/FolderInfo;
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/launcher4/DeleteDropTarget;->isWorkspaceOrFolderWidget(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 365
    iget-object v12, p0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object v11, v7

    check-cast v11, Lcom/android/launcher4/LauncherAppWidgetInfo;

    invoke-virtual {v12, v11}, Lcom/android/launcher4/Launcher;->removeAppWidget(Lcom/android/launcher4/LauncherAppWidgetInfo;)V

    .line 366
    iget-object v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v11, v7}, Lcom/android/launcher4/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    move-object v8, v7

    .line 368
    check-cast v8, Lcom/android/launcher4/LauncherAppWidgetInfo;

    .line 369
    .local v8, "launcherAppWidgetInfo":Lcom/android/launcher4/LauncherAppWidgetInfo;
    iget-object v11, p0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher4/Launcher;->getAppWidgetHost()Lcom/android/launcher4/LauncherAppWidgetHost;

    move-result-object v1

    .line 370
    .local v1, "appWidgetHost":Lcom/android/launcher4/LauncherAppWidgetHost;
    if-eqz v1, :cond_0

    .line 373
    new-instance v11, Lcom/android/launcher4/DeleteDropTarget$3;

    const-string v12, "deleteAppWidgetId"

    invoke-direct {v11, p0, v12, v1, v8}, Lcom/android/launcher4/DeleteDropTarget$3;-><init>(Lcom/android/launcher4/DeleteDropTarget;Ljava/lang/String;Lcom/android/launcher4/LauncherAppWidgetHost;Lcom/android/launcher4/LauncherAppWidgetInfo;)V

    .line 377
    invoke-virtual {v11}, Lcom/android/launcher4/DeleteDropTarget$3;->start()V

    goto/16 :goto_0

    .line 383
    .end local v1    # "appWidgetHost":Lcom/android/launcher4/LauncherAppWidgetHost;
    .end local v8    # "launcherAppWidgetInfo":Lcom/android/launcher4/LauncherAppWidgetInfo;
    :cond_6
    iget-object v11, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    instance-of v11, v11, Lcom/android/launcher4/Workspace;

    if-eqz v11, :cond_1

    .line 384
    iget-object v11, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    check-cast v11, Lcom/android/launcher4/Workspace;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/launcher4/Workspace;->onUninstallActivityReturned(Z)V

    goto/16 :goto_1
.end method

.method private createFlingAlongVectorAnimatorListener(Lcom/android/launcher4/DragLayer;Lcom/android/launcher4/DropTarget$DragObject;Landroid/graphics/PointF;JILandroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 8
    .param p1, "dragLayer"    # Lcom/android/launcher4/DragLayer;
    .param p2, "d"    # Lcom/android/launcher4/DropTarget$DragObject;
    .param p3, "vel"    # Landroid/graphics/PointF;
    .param p4, "startTime"    # J
    .param p6, "duration"    # I
    .param p7, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 502
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 503
    .local v3, "from":Landroid/graphics/Rect;
    iget-object v0, p2, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher4/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 505
    new-instance v0, Lcom/android/launcher4/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;

    .line 506
    sget v6, Lcom/android/launcher4/DeleteDropTarget;->FLING_TO_DELETE_FRICTION:F

    move-object v1, p1

    move-object v2, p3

    move-wide v4, p4

    .line 505
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher4/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;-><init>(Lcom/android/launcher4/DragLayer;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    return-object v0
.end method

.method private createFlingToTrashAnimatorListener(Lcom/android/launcher4/DragLayer;Lcom/android/launcher4/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 19
    .param p1, "dragLayer"    # Lcom/android/launcher4/DragLayer;
    .param p2, "d"    # Lcom/android/launcher4/DropTarget$DragObject;
    .param p3, "vel"    # Landroid/graphics/PointF;
    .param p4, "config"    # Landroid/view/ViewConfiguration;

    .prologue
    .line 398
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v2}, Lcom/android/launcher4/DragView;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v3}, Lcom/android/launcher4/DragView;->getMeasuredHeight()I

    move-result v3

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/TransitionDrawable;->getIntrinsicHeight()I

    move-result v18

    .line 398
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/launcher4/DeleteDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v15

    .line 400
    .local v15, "to":Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 401
    .local v12, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Lcom/android/launcher4/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/PointF;->length()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 406
    .local v16, "velocity":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float v3, v16, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 407
    .local v17, "vp":F
    iget v2, v12, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v14, v2

    .line 408
    .local v14, "offsetY":I
    int-to-float v2, v14

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p3

    iget v4, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v13, v2

    .line 409
    .local v13, "offsetX":I
    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v14

    int-to-float v10, v2

    .line 410
    .local v10, "y2":F
    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v13

    int-to-float v7, v2

    .line 411
    .local v7, "x2":F
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    .line 412
    .local v6, "x1":F
    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    .line 413
    .local v9, "y1":F
    iget v2, v15, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    .line 414
    .local v8, "x3":F
    iget v2, v15, Landroid/graphics/Rect;->top:I

    int-to-float v11, v2

    .line 416
    .local v11, "y3":F
    new-instance v5, Lcom/android/launcher4/DeleteDropTarget$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher4/DeleteDropTarget$4;-><init>(Lcom/android/launcher4/DeleteDropTarget;)V

    .line 422
    .local v5, "scaleAlphaInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v2, Lcom/android/launcher4/DeleteDropTarget$5;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher4/DeleteDropTarget$5;-><init>(Lcom/android/launcher4/DeleteDropTarget;Lcom/android/launcher4/DragLayer;Landroid/animation/TimeInterpolator;FFFFFF)V

    return-object v2
.end method

.method private deferCompleteDropIfUninstalling(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/DeleteDropTarget;->mWaitingForUninstall:Z

    .line 288
    invoke-direct {p0, p1}, Lcom/android/launcher4/DeleteDropTarget;->isUninstallFromWorkspace(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    instance-of v0, v0, Lcom/android/launcher4/Folder;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    check-cast v0, Lcom/android/launcher4/Folder;

    invoke-virtual {v0}, Lcom/android/launcher4/Folder;->deferCompleteDropAfterUninstallActivity()V

    .line 294
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/DeleteDropTarget;->mWaitingForUninstall:Z

    .line 296
    :cond_1
    return-void

    .line 291
    :cond_2
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    instance-of v0, v0, Lcom/android/launcher4/Workspace;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    check-cast v0, Lcom/android/launcher4/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher4/Workspace;->deferCompleteDropAfterUninstallActivity()V

    goto :goto_0
.end method

.method private isAllAppsApplication(Lcom/android/launcher4/DragSource;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "source"    # Lcom/android/launcher4/DragSource;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 110
    instance-of v0, p1, Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/launcher4/AppInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllAppsWidget(Lcom/android/launcher4/DragSource;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "source"    # Lcom/android/launcher4/DragSource;
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 114
    instance-of v1, p1, Lcom/android/launcher4/AppsCustomizePagedView;

    if-eqz v1, :cond_0

    .line 115
    instance-of v1, p2, Lcom/android/launcher4/PendingAddItemInfo;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 116
    check-cast v0, Lcom/android/launcher4/PendingAddItemInfo;

    .line 117
    .local v0, "addInfo":Lcom/android/launcher4/PendingAddItemInfo;
    iget v1, v0, Lcom/android/launcher4/PendingAddItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 124
    .end local v0    # "addInfo":Lcom/android/launcher4/PendingAddItemInfo;
    :cond_0
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 120
    .restart local v0    # "addInfo":Lcom/android/launcher4/PendingAddItemInfo;
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDragSourceWorkspaceOrFolder(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 128
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    instance-of v0, v0, Lcom/android/launcher4/Workspace;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    instance-of v0, v0, Lcom/android/launcher4/Folder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isUninstallFromWorkspace(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 6
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 299
    sget-boolean v4, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/launcher4/DeleteDropTarget;->isWorkspaceOrFolderApplication(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    iget-object v3, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher4/ShortcutInfo;

    .line 301
    .local v3, "shortcut":Lcom/android/launcher4/ShortcutInfo;
    iget-object v4, v3, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 302
    iget-object v4, v3, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 303
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 304
    .local v2, "includesLauncherCategory":Z
    if-eqz v0, :cond_1

    .line 305
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 315
    .end local v0    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "includesLauncherCategory":Z
    .end local v3    # "shortcut":Lcom/android/launcher4/ShortcutInfo;
    :cond_1
    :goto_0
    return v2

    .line 305
    .restart local v0    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "includesLauncherCategory":Z
    .restart local v3    # "shortcut":Lcom/android/launcher4/ShortcutInfo;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    .local v1, "category":Ljava/lang/String;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    const/4 v2, 0x1

    .line 308
    goto :goto_0

    .line 315
    .end local v0    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "category":Ljava/lang/String;
    .end local v2    # "includesLauncherCategory":Z
    .end local v3    # "shortcut":Lcom/android/launcher4/ShortcutInfo;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isWorkspaceFolder(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 140
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    instance-of v0, v0, Lcom/android/launcher4/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher4/FolderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWorkspaceOrFolderApplication(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/launcher4/DeleteDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWorkspaceOrFolderWidget(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/launcher4/DeleteDropTarget;->isDragSourceWorkspaceOrFolder(Lcom/android/launcher4/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher4/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetHoverColor()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher4/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 150
    iget-object v0, p0, Lcom/android/launcher4/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher4/DeleteDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 151
    return-void
.end method

.method private setHoverColor()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher4/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/android/launcher4/DeleteDropTarget;->mTransitionDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 145
    iget v0, p0, Lcom/android/launcher4/DeleteDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/android/launcher4/DeleteDropTarget;->setTextColor(I)V

    .line 146
    return-void
.end method

.method public static willAcceptDrop(Ljava/lang/Object;)Z
    .locals 7
    .param p0, "info"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 159
    instance-of v5, p0, Lcom/android/launcher4/ItemInfo;

    if-eqz v5, :cond_5

    move-object v1, p0

    .line 160
    check-cast v1, Lcom/android/launcher4/ItemInfo;

    .line 161
    .local v1, "item":Lcom/android/launcher4/ItemInfo;
    iget v5, v1, Lcom/android/launcher4/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "AppWidget"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 197
    .end local v1    # "item":Lcom/android/launcher4/ItemInfo;
    :cond_0
    :goto_0
    return v3

    .restart local v1    # "item":Lcom/android/launcher4/ItemInfo;
    :cond_1
    move v3, v4

    .line 165
    goto :goto_0

    .line 169
    :cond_2
    iget v5, v1, Lcom/android/launcher4/ItemInfo;->itemType:I

    if-eq v5, v3, :cond_0

    .line 173
    sget-boolean v5, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v5, :cond_3

    .line 174
    iget v5, v1, Lcom/android/launcher4/ItemInfo;->itemType:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 178
    :cond_3
    sget-boolean v5, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v5, :cond_4

    .line 179
    iget v5, v1, Lcom/android/launcher4/ItemInfo;->itemType:I

    if-nez v5, :cond_4

    .line 180
    instance-of v5, v1, Lcom/android/launcher4/AppInfo;

    if-eqz v5, :cond_4

    move-object v0, p0

    .line 181
    check-cast v0, Lcom/android/launcher4/AppInfo;

    .line 182
    .local v0, "appInfo":Lcom/android/launcher4/AppInfo;
    iget v5, v0, Lcom/android/launcher4/AppInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 185
    .end local v0    # "appInfo":Lcom/android/launcher4/AppInfo;
    :cond_4
    iget v5, v1, Lcom/android/launcher4/ItemInfo;->itemType:I

    if-nez v5, :cond_5

    .line 186
    instance-of v5, v1, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v5, :cond_5

    .line 187
    sget-boolean v5, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 188
    check-cast v2, Lcom/android/launcher4/ShortcutInfo;

    .line 189
    .local v2, "shortcutInfo":Lcom/android/launcher4/ShortcutInfo;
    iget v5, v2, Lcom/android/launcher4/ShortcutInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 196
    .end local v1    # "item":Lcom/android/launcher4/ItemInfo;
    .end local v2    # "shortcutInfo":Lcom/android/launcher4/ShortcutInfo;
    :cond_5
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v3

    const-string v5, "DeleteDropTarget willAcceptDrop false"

    invoke-virtual {v3, v5}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    move v3, v4

    .line 197
    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 155
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/launcher4/DeleteDropTarget;->willAcceptDrop(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onDragEnd()V
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/launcher4/ButtonDropTarget;->onDragEnd()V

    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/DeleteDropTarget;->mActive:Z

    .line 237
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/android/launcher4/ButtonDropTarget;->onDragEnter(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 242
    invoke-direct {p0}, Lcom/android/launcher4/DeleteDropTarget;->setHoverColor()V

    .line 243
    return-void
.end method

.method public onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/android/launcher4/ButtonDropTarget;->onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 248
    iget-boolean v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/launcher4/DeleteDropTarget;->resetHoverColor()V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    iget v1, p0, Lcom/android/launcher4/DeleteDropTarget;->mHoverColor:I

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DragView;->setColor(I)V

    goto :goto_0
.end method

.method public onDragStart(Lcom/android/launcher4/DragSource;Ljava/lang/Object;I)V
    .locals 5
    .param p1, "source"    # Lcom/android/launcher4/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 202
    const/4 v0, 0x1

    .line 203
    .local v0, "isVisible":Z
    sget-boolean v2, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v2, :cond_3

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/DeleteDropTarget;->isAllAppsApplication(Lcom/android/launcher4/DragSource;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 203
    const/4 v1, 0x1

    .line 209
    .local v1, "useUninstallLabel":Z
    :goto_0
    invoke-static {p2}, Lcom/android/launcher4/DeleteDropTarget;->willAcceptDrop(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/DeleteDropTarget;->isAllAppsWidget(Lcom/android/launcher4/DragSource;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 213
    :cond_1
    if-eqz v1, :cond_4

    .line 214
    iget-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v2, v4, v4, v4}, Lcom/android/launcher4/DeleteDropTarget;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/DeleteDropTarget;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 221
    iput-boolean v0, p0, Lcom/android/launcher4/DeleteDropTarget;->mActive:Z

    .line 222
    invoke-direct {p0}, Lcom/android/launcher4/DeleteDropTarget;->resetHoverColor()V

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher4/DeleteDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 224
    invoke-virtual {p0}, Lcom/android/launcher4/DeleteDropTarget;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 225
    if-eqz v1, :cond_6

    const v2, 0x7f0c002c

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/launcher4/DeleteDropTarget;->setText(I)V

    .line 229
    :cond_2
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DeleteDropTarget onDragStart isVisible = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher4/DeleteDropTarget;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher4/DeleteDropTarget;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v2, v3}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 231
    return-void

    .end local v1    # "useUninstallLabel":Z
    :cond_3
    move v1, v3

    .line 203
    goto :goto_0

    .line 216
    .restart local v1    # "useUninstallLabel":Z
    :cond_4
    iget-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v2, v4, v4, v4}, Lcom/android/launcher4/DeleteDropTarget;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 223
    :cond_5
    const/16 v3, 0x8

    goto :goto_2

    .line 225
    :cond_6
    const v2, 0x7f0c002b

    goto :goto_3
.end method

.method public onDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/android/launcher4/DeleteDropTarget;->animateToTrashAndCompleteDrop(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 391
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 76
    invoke-super {p0}, Lcom/android/launcher4/ButtonDropTarget;->onFinishInflate()V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher4/DeleteDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher4/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 83
    .local v1, "r":Landroid/content/res/Resources;
    const/high16 v2, 0x7f090000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mHoverColor:I

    .line 84
    sget-boolean v2, Lcom/android/launcher4/LauncherApplication;->is3g:Z

    if-eqz v2, :cond_1

    .line 86
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->uninstall_target_selector_3g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 87
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v2

    iget v2, v2, Lshare/ResValue;->remove_target_selector_3g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 93
    :goto_0
    iget-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 94
    iget-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher4/DeleteDropTarget;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mCurrentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher4/DeleteDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 102
    .local v0, "orientation":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 103
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/launcher4/DeleteDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void

    .line 89
    .end local v0    # "orientation":I
    :cond_1
    const v2, 0x7f02069e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mUninstallDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 90
    const v2, 0x7f020667

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v2, p0, Lcom/android/launcher4/DeleteDropTarget;->mRemoveDrawable:Landroid/graphics/drawable/TransitionDrawable;

    goto :goto_0
.end method

.method public onFlingToDelete(Lcom/android/launcher4/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 21
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "vel"    # Landroid/graphics/PointF;

    .prologue
    .line 510
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragSource:Lcom/android/launcher4/DragSource;

    instance-of v0, v4, Lcom/android/launcher4/AppsCustomizePagedView;

    move/from16 v20, v0

    .line 513
    .local v20, "isAllApps":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/launcher4/DragView;->setColor(I)V

    .line 514
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v4}, Lcom/android/launcher4/DragView;->updateInitialScaleToCurrentScale()V

    .line 516
    if-eqz v20, :cond_0

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/DeleteDropTarget;->resetHoverColor()V

    .line 520
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeleteDropTarget;->mFlingDeleteMode:I

    sget v6, Lcom/android/launcher4/DeleteDropTarget;->MODE_FLING_DELETE_TO_TRASH:I

    if-ne v4, v6, :cond_1

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v4}, Lcom/android/launcher4/SearchDropTargetBar;->deferOnDragEnd()V

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    invoke-virtual {v4}, Lcom/android/launcher4/SearchDropTargetBar;->finishAnimations()V

    .line 526
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    .line 527
    .local v11, "config":Landroid/view/ViewConfiguration;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/DeleteDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v5

    .line 528
    .local v5, "dragLayer":Lcom/android/launcher4/DragLayer;
    sget v10, Lcom/android/launcher4/DeleteDropTarget;->FLING_DELETE_ANIMATION_DURATION:I

    .line 529
    .local v10, "duration":I
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 536
    .local v8, "startTime":J
    new-instance v16, Lcom/android/launcher4/DeleteDropTarget$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v9, v10}, Lcom/android/launcher4/DeleteDropTarget$6;-><init>(Lcom/android/launcher4/DeleteDropTarget;JI)V

    .line 552
    .local v16, "tInterpolator":Landroid/animation/TimeInterpolator;
    const/4 v14, 0x0

    .line 553
    .local v14, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeleteDropTarget;->mFlingDeleteMode:I

    sget v6, Lcom/android/launcher4/DeleteDropTarget;->MODE_FLING_DELETE_TO_TRASH:I

    if-ne v4, v6, :cond_3

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v5, v1, v2, v11}, Lcom/android/launcher4/DeleteDropTarget;->createFlingToTrashAnimatorListener(Lcom/android/launcher4/DragLayer;Lcom/android/launcher4/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v14

    .line 559
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher4/DeleteDropTarget;->deferCompleteDropIfUninstalling(Lcom/android/launcher4/DropTarget$DragObject;)V

    .line 561
    new-instance v17, Lcom/android/launcher4/DeleteDropTarget$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher4/DeleteDropTarget$7;-><init>(Lcom/android/launcher4/DeleteDropTarget;ZLcom/android/launcher4/DropTarget$DragObject;)V

    .line 573
    .local v17, "onAnimationEndRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    .line 574
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v5

    move v15, v10

    .line 573
    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher4/DragLayer;->animateView(Lcom/android/launcher4/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 575
    return-void

    .line 555
    .end local v17    # "onAnimationEndRunnable":Ljava/lang/Runnable;
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher4/DeleteDropTarget;->mFlingDeleteMode:I

    sget v6, Lcom/android/launcher4/DeleteDropTarget;->MODE_FLING_DELETE_ALONG_VECTOR:I

    if-ne v4, v6, :cond_2

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    .line 556
    invoke-direct/range {v4 .. v11}, Lcom/android/launcher4/DeleteDropTarget;->createFlingAlongVectorAnimatorListener(Lcom/android/launcher4/DragLayer;Lcom/android/launcher4/DropTarget$DragObject;Landroid/graphics/PointF;JILandroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v14

    goto :goto_0
.end method
