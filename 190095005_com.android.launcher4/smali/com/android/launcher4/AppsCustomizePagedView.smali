.class public Lcom/android/launcher4/AppsCustomizePagedView;
.super Lcom/android/launcher4/PagedViewWithDraggableItems;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/android/launcher4/DragSource;
.implements Lcom/android/launcher4/PagedViewIcon$PressedCallback;
.implements Lcom/android/launcher4/PagedViewWidget$ShortPressListener;
.implements Lcom/android/launcher4/LauncherTransitionable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/AppsCustomizePagedView$ContentType;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field public static DISABLE_ALL_APPS:Z = false

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static TRANSITION_MAX_ROTATION:F = 0.0f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field static final WIDGET_BOUND:I = 0x1

.field static final WIDGET_INFLATED:I = 0x2

.field static final WIDGET_NO_CLEANUP_REQUIRED:I = -0x1

.field static final WIDGET_PRELOAD_PENDING:I = 0x0

.field private static containsWidgets:[Ljava/lang/String; = null

.field static final sLookAheadPageCount:I = 0x2

.field static final sLookBehindPageCount:I = 0x2

.field private static final sPageSleepDelay:I = 0xc8


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBindWidgetRunnable:Ljava/lang/Runnable;

.field mCachedAppWidgetPreviewCanvas:Lcom/android/launcher4/CanvasCache;

.field mCachedAppWidgetPreviewDestRect:Lcom/android/launcher4/RectCache;

.field mCachedAppWidgetPreviewPaint:Lcom/android/launcher4/PaintCache;

.field mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher4/RectCache;

.field mCachedShortcutPreviewBitmap:Lcom/android/launcher4/BitmapCache;

.field mCachedShortcutPreviewCanvas:Lcom/android/launcher4/CanvasCache;

.field mCachedShortcutPreviewPaint:Lcom/android/launcher4/PaintCache;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClingFocusedX:I

.field private mClingFocusedY:I

.field private mContentHeight:I

.field private mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

.field private mContentWidth:I

.field mCreateWidgetInfo:Lcom/android/launcher4/PendingAddWidgetInfo;

.field private mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AsyncTaskPageData;",
            ">;"
        }
    .end annotation
.end field

.field private mDragController:Lcom/android/launcher4/DragController;

.field private mDraggingWidget:Z

.field private mHasShownAllAppsCling:Z

.field private mIconCache:Lcom/android/launcher4/IconCache;

.field private mInBulkBind:Z

.field private mInTransition:Z

.field private mInflateWidgetRunnable:Ljava/lang/Runnable;

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mNeedToUpdatePageCountsAndInvalidateData:Z

.field private mNumAppsPages:I

.field private mNumWidgetPages:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPressedIcon:Lcom/android/launcher4/PagedViewIcon;

.field mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field private mTmpRect:Landroid/graphics/Rect;

.field mWidgetCleanupState:I

.field private mWidgetCountX:I

.field private mWidgetCountY:I

.field private mWidgetHeightGap:I

.field private mWidgetInstructionToast:Landroid/widget/Toast;

.field mWidgetLoadingId:I

.field mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

.field private mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

.field private mWidgetWidthGap:I

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mZInterpolator:Lcom/android/launcher4/Workspace$ZInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 213
    const v0, 0x45cb2000    # 6500.0f

    sput v0, Lcom/android/launcher4/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    .line 214
    const v0, 0x3f3d70a4    # 0.74f

    sput v0, Lcom/android/launcher4/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    .line 215
    const v0, 0x3f266666    # 0.65f

    sput v0, Lcom/android/launcher4/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    .line 216
    const/high16 v0, 0x41b00000    # 22.0f

    sput v0, Lcom/android/launcher4/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    .line 223
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    .line 224
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 223
    sput-boolean v0, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    .line 522
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 523
    const-string v2, "com.syu.widget.DateTimeProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.syu.music.MAppWidget"

    aput-object v2, v0, v1

    .line 522
    sput-object v0, Lcom/android/launcher4/AppsCustomizePagedView;->containsWidgets:[Ljava/lang/String;

    .line 2003
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 178
    sget-object v3, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .line 185
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->handler:Landroid/os/Handler;

    .line 187
    iput v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 212
    new-instance v3, Lcom/android/launcher4/Workspace$ZInterpolator;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v3, v4}, Lcom/android/launcher4/Workspace$ZInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher4/Workspace$ZInterpolator;

    .line 218
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    .line 219
    const v4, 0x3f666666    # 0.9f

    .line 218
    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 220
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    .line 221
    const/high16 v4, 0x40800000    # 4.0f

    .line 220
    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 230
    iput-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 231
    iput-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 236
    iput v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 237
    iput v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetLoadingId:I

    .line 238
    iput-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher4/PendingAddWidgetInfo;

    .line 239
    iput-boolean v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    .line 248
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 251
    new-instance v3, Lcom/android/launcher4/BitmapCache;

    invoke-direct {v3}, Lcom/android/launcher4/BitmapCache;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCachedShortcutPreviewBitmap:Lcom/android/launcher4/BitmapCache;

    .line 252
    new-instance v3, Lcom/android/launcher4/PaintCache;

    invoke-direct {v3}, Lcom/android/launcher4/PaintCache;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCachedShortcutPreviewPaint:Lcom/android/launcher4/PaintCache;

    .line 253
    new-instance v3, Lcom/android/launcher4/CanvasCache;

    invoke-direct {v3}, Lcom/android/launcher4/CanvasCache;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCachedShortcutPreviewCanvas:Lcom/android/launcher4/CanvasCache;

    .line 256
    new-instance v3, Lcom/android/launcher4/CanvasCache;

    invoke-direct {v3}, Lcom/android/launcher4/CanvasCache;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher4/CanvasCache;

    .line 257
    new-instance v3, Lcom/android/launcher4/RectCache;

    invoke-direct {v3}, Lcom/android/launcher4/RectCache;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher4/RectCache;

    .line 258
    new-instance v3, Lcom/android/launcher4/RectCache;

    invoke-direct {v3}, Lcom/android/launcher4/RectCache;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCachedAppWidgetPreviewDestRect:Lcom/android/launcher4/RectCache;

    .line 259
    new-instance v3, Lcom/android/launcher4/PaintCache;

    invoke-direct {v3}, Lcom/android/launcher4/PaintCache;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCachedAppWidgetPreviewPaint:Lcom/android/launcher4/PaintCache;

    .line 268
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 270
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    .line 272
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/LauncherAppState;->getIconCache()Lcom/android/launcher4/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 273
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    .line 274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    .line 277
    sget-object v3, Lcom/android/launcher4/R$styleable;->AppsCustomizePagedView:[I

    .line 276
    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 278
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v1

    .line 279
    .local v1, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v2

    .line 280
    .local v2, "grid":Lcom/android/launcher4/DeviceProfile;
    iget v3, v2, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    iput v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetHeightGap:I

    iput v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetWidthGap:I

    .line 282
    const/4 v3, 0x4

    .line 281
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    .line 284
    const/4 v3, 0x5

    .line 283
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    .line 286
    const/4 v3, 0x6

    .line 285
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mClingFocusedX:I

    .line 288
    const/4 v3, 0x7

    .line 287
    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mClingFocusedY:I

    .line 289
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 290
    new-instance v3, Lcom/android/launcher4/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/launcher4/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

    .line 295
    iput-boolean v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mFadeInAdjacentScreens:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getImportantForAccessibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 299
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher4/AppsCustomizePagedView;->setImportantForAccessibility(I)V

    .line 301
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/AppsCustomizePagedView;)Lcom/android/launcher4/Launcher;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/AppsCustomizePagedView;Lcom/android/launcher4/AppsCustomizeAsyncTask;Lcom/android/launcher4/AsyncTaskPageData;)V
    .locals 0

    .prologue
    .line 1506
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/android/launcher4/AppsCustomizeAsyncTask;Lcom/android/launcher4/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/launcher4/AppsCustomizePagedView;Lcom/android/launcher4/AsyncTaskPageData;)V
    .locals 0

    .prologue
    .line 1535
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher4/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/launcher4/AppsCustomizePagedView;)Lcom/android/launcher4/PagedViewCellLayout;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/launcher4/AppsCustomizePagedView;)Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInTransition:Z

    return v0
.end method

.method static synthetic access$5(Lcom/android/launcher4/AppsCustomizePagedView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/launcher4/AppsCustomizePagedView;)I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    return v0
.end method

.method static synthetic access$7(Lcom/android/launcher4/AppsCustomizePagedView;ILjava/util/ArrayList;III)V
    .locals 0

    .prologue
    .line 1306
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher4/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V

    return-void
.end method

.method private addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 1858
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1859
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1867
    return-void

    .line 1860
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/AppInfo;

    .line 1861
    .local v3, "info":Lcom/android/launcher4/AppInfo;
    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 1862
    invoke-static {}, Lcom/android/launcher4/LauncherModel;->getAppNameComparator()Ljava/util/Comparator;

    move-result-object v5

    .line 1861
    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 1863
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1864
    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1859
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private beginDraggingApplication(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher4/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 688
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher4/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher4/DragSource;)V

    .line 689
    return-void
.end method

.method private beginDraggingWidget(Landroid/view/View;)Z
    .locals 33
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 844
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 846
    const v3, 0x7f110014

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 847
    .local v26, "image":Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher4/PendingAddItemInfo;

    .line 852
    .local v19, "createItemInfo":Lcom/android/launcher4/PendingAddItemInfo;
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 853
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 854
    const/4 v3, 0x0

    .line 946
    :goto_0
    return v3

    .line 860
    :cond_0
    const/high16 v22, 0x3f800000    # 1.0f

    .line 861
    .local v22, "scale":F
    const/16 v21, 0x0

    .line 863
    .local v21, "previewPadding":Landroid/graphics/Point;
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/launcher4/PendingAddWidgetInfo;

    if-eqz v3, :cond_3

    .line 867
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher4/PendingAddWidgetInfo;

    if-nez v3, :cond_1

    .line 868
    const/4 v3, 0x0

    goto :goto_0

    .line 871
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher4/PendingAddWidgetInfo;

    move-object/from16 v25, v0

    .line 872
    .local v25, "createWidgetInfo":Lcom/android/launcher4/PendingAddWidgetInfo;
    move-object/from16 v19, v25

    .line 873
    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/launcher4/PendingAddItemInfo;->spanX:I

    .line 874
    .local v7, "spanX":I
    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/launcher4/PendingAddItemInfo;->spanY:I

    .line 875
    .local v8, "spanY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v3

    .line 876
    const/4 v4, 0x1

    .line 875
    move-object/from16 v0, v25

    invoke-virtual {v3, v7, v8, v0, v4}, Lcom/android/launcher4/Workspace;->estimateItemSize(IILcom/android/launcher4/ItemInfo;Z)[I

    move-result-object v32

    .line 879
    .local v32, "size":[I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    .line 878
    check-cast v30, Lcom/android/launcher4/FastBitmapDrawable;

    .line 880
    .local v30, "previewDrawable":Lcom/android/launcher4/FastBitmapDrawable;
    const/high16 v27, 0x3fa00000    # 1.25f

    .line 883
    .local v27, "minScale":F
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher4/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v27

    float-to-int v3, v3

    .line 884
    const/4 v4, 0x0

    aget v4, v32, v4

    .line 882
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 886
    .local v9, "maxWidth":I
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher4/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v27

    float-to-int v3, v3

    .line 887
    const/4 v4, 0x1

    aget v4, v32, v4

    .line 885
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 889
    .local v10, "maxHeight":I
    const/4 v3, 0x1

    new-array v12, v3, [I

    .line 891
    .local v12, "previewSizeBeforeScale":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    .line 892
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/launcher4/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 893
    move-object/from16 v0, v25

    iget v5, v0, Lcom/android/launcher4/PendingAddWidgetInfo;->previewImage:I

    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/launcher4/PendingAddWidgetInfo;->icon:I

    .line 894
    const/4 v11, 0x0

    .line 891
    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher4/WidgetPreviewLoader;->generateWidgetPreview(Landroid/content/ComponentName;IIIIIILandroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 900
    .local v14, "preview":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    aget v3, v12, v3

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    invoke-virtual {v4, v7}, Lcom/android/launcher4/WidgetPreviewLoader;->maxWidthForWidgetPreview(I)I

    move-result v4

    .line 899
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 902
    .local v31, "previewWidthInAppsCustomize":I
    move/from16 v0, v31

    int-to-float v3, v0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v22, v3, v4

    .line 909
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher4/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    move/from16 v0, v31

    if-ge v0, v3, :cond_2

    .line 910
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher4/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v3, v3, v31

    div-int/lit8 v29, v3, 0x2

    .line 911
    .local v29, "padding":I
    new-instance v21, Landroid/graphics/Point;

    .end local v21    # "previewPadding":Landroid/graphics/Point;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 932
    .end local v7    # "spanX":I
    .end local v8    # "spanY":I
    .end local v9    # "maxWidth":I
    .end local v10    # "maxHeight":I
    .end local v12    # "previewSizeBeforeScale":[I
    .end local v25    # "createWidgetInfo":Lcom/android/launcher4/PendingAddWidgetInfo;
    .end local v27    # "minScale":F
    .end local v29    # "padding":I
    .end local v30    # "previewDrawable":Lcom/android/launcher4/FastBitmapDrawable;
    .end local v31    # "previewWidthInAppsCustomize":I
    .end local v32    # "size":[I
    .restart local v21    # "previewPadding":Landroid/graphics/Point;
    :cond_2
    :goto_1
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/android/launcher4/PendingAddWidgetInfo;

    if-eqz v3, :cond_4

    move-object/from16 v3, v19

    check-cast v3, Lcom/android/launcher4/PendingAddWidgetInfo;

    iget v3, v3, Lcom/android/launcher4/PendingAddWidgetInfo;->previewImage:I

    if-nez v3, :cond_4

    const/16 v23, 0x0

    .line 935
    .local v23, "clipAlpha":Z
    :goto_2
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 936
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    .line 935
    invoke-static {v14, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 939
    .local v28, "outline":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->lockScreenOrientation()V

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move/from16 v2, v23

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/launcher4/Workspace;->onDragStartedWithItem(Lcom/android/launcher4/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V

    .line 942
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mDragController:Lcom/android/launcher4/DragController;

    .line 943
    sget v20, Lcom/android/launcher4/DragController;->DRAG_ACTION_COPY:I

    move-object/from16 v16, v26

    move-object/from16 v17, v14

    move-object/from16 v18, p0

    .line 942
    invoke-virtual/range {v15 .. v22}, Lcom/android/launcher4/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher4/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;F)V

    .line 944
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->recycle()V

    .line 945
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 946
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 915
    .end local v14    # "preview":Landroid/graphics/Bitmap;
    .end local v23    # "clipAlpha":Z
    .end local v28    # "outline":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    .line 914
    check-cast v24, Lcom/android/launcher4/PendingAddShortcutInfo;

    .line 916
    .local v24, "createShortcutInfo":Lcom/android/launcher4/PendingAddShortcutInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 917
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/launcher4/PendingAddShortcutInfo;->shortcutActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher4/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 918
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 919
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 918
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 921
    .restart local v14    # "preview":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 923
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 924
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 923
    invoke-static/range {v13 .. v18}, Lcom/android/launcher4/WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 927
    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/launcher4/PendingAddItemInfo;->spanY:I

    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/launcher4/PendingAddItemInfo;->spanX:I

    goto/16 :goto_1

    .line 932
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "createShortcutInfo":Lcom/android/launcher4/PendingAddShortcutInfo;
    :cond_4
    const/16 v23, 0x1

    goto/16 :goto_2
.end method

.method private cancelAllTasks()V
    .locals 6

    .prologue
    .line 1111
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1112
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/AppsCustomizeAsyncTask;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1125
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1126
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1127
    return-void

    .line 1113
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/AppsCustomizeAsyncTask;

    .line 1114
    .local v1, "task":Lcom/android/launcher4/AppsCustomizeAsyncTask;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 1115
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1116
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    iget v4, v1, Lcom/android/launcher4/AppsCustomizeAsyncTask;->page:I

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget v3, v1, Lcom/android/launcher4/AppsCustomizeAsyncTask;->page:I

    invoke-virtual {p0, v3}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1121
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher4/PagedViewGridLayout;

    if-eqz v3, :cond_0

    .line 1122
    check-cast v2, Lcom/android/launcher4/PagedViewGridLayout;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher4/PagedViewGridLayout;->removeAllViewsOnPage()V

    goto :goto_0
.end method

.method private cleanupWidgetPreloading(Z)V
    .locals 6
    .param p1, "widgetWasAdded"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 797
    if-nez p1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher4/PendingAddWidgetInfo;

    .line 800
    .local v0, "info":Lcom/android/launcher4/PendingAddWidgetInfo;
    iput-object v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher4/PendingAddWidgetInfo;

    .line 802
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCleanupState:I

    if-nez v2, :cond_1

    .line 805
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 806
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 830
    .end local v0    # "info":Lcom/android/launcher4/PendingAddWidgetInfo;
    :cond_0
    :goto_0
    iput v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 831
    iput v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetLoadingId:I

    .line 832
    iput-object v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher4/PendingAddWidgetInfo;

    .line 833
    invoke-static {}, Lcom/android/launcher4/PagedViewWidget;->resetShortPressTarget()V

    .line 834
    return-void

    .line 807
    .restart local v0    # "info":Lcom/android/launcher4/PendingAddWidgetInfo;
    :cond_1
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCleanupState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 809
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetLoadingId:I

    if-eq v2, v4, :cond_2

    .line 810
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getAppWidgetHost()Lcom/android/launcher4/LauncherAppWidgetHost;

    move-result-object v2

    .line 811
    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetLoadingId:I

    .line 810
    invoke-virtual {v2, v3}, Lcom/android/launcher4/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 816
    :cond_2
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 817
    :cond_3
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCleanupState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 819
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetLoadingId:I

    if-eq v2, v4, :cond_4

    .line 820
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getAppWidgetHost()Lcom/android/launcher4/LauncherAppWidgetHost;

    move-result-object v2

    .line 821
    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetLoadingId:I

    .line 820
    invoke-virtual {v2, v3}, Lcom/android/launcher4/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 826
    :cond_4
    iget-object v1, v0, Lcom/android/launcher4/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 827
    .local v1, "widget":Landroid/appwidget/AppWidgetHostView;
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher4/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1953
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1968
    return-void

    .line 1954
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1955
    .local v0, "i":Ljava/lang/Object;
    instance-of v3, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 1956
    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1957
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "   label=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" previewImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1958
    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resizeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1959
    const-string v4, " configure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " initialLayout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1960
    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1961
    const-string v4, " minHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1957
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1962
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    instance-of v3, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 1963
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1964
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "   label=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1965
    const-string v4, "\" icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1964
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1760
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getChildCount()I

    move-result v5

    .line 1762
    .local v5, "screenCount":I
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v6}, Lcom/android/launcher4/AppsCustomizePagedView;->getVisiblePages([I)V

    .line 1763
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mTempVisiblePagesRange:[I

    aget v3, v6, v8

    .line 1764
    .local v3, "leftScreen":I
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mTempVisiblePagesRange:[I

    const/4 v7, 0x1

    aget v4, v6, v7

    .line 1765
    .local v4, "rightScreen":I
    const/4 v0, -0x1

    .line 1766
    .local v0, "forceDrawScreen":I
    if-ne v3, v4, :cond_2

    .line 1768
    add-int/lit8 v6, v5, -0x1

    if-ge v4, v6, :cond_1

    .line 1769
    add-int/lit8 v4, v4, 0x1

    .line 1770
    move v0, v4

    .line 1779
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v5, :cond_3

    .line 1786
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v5, :cond_6

    .line 1796
    return-void

    .line 1771
    .end local v1    # "i":I
    :cond_1
    if-lez v3, :cond_0

    .line 1772
    add-int/lit8 v3, v3, -0x1

    .line 1773
    move v0, v3

    .line 1775
    goto :goto_0

    .line 1776
    :cond_2
    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    .line 1780
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1781
    .local v2, "layout":Landroid/view/View;
    if-gt v3, v1, :cond_4

    if-gt v1, v4, :cond_4

    if-eq v1, v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1782
    :cond_4
    invoke-virtual {v2, v8, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1779
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1787
    .end local v2    # "layout":Landroid/view/View;
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1789
    .restart local v2    # "layout":Landroid/view/View;
    if-gt v3, v1, :cond_8

    if-gt v1, v4, :cond_8

    .line 1790
    if-eq v1, v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1791
    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getLayerType()I

    move-result v6

    if-eq v6, v9, :cond_8

    .line 1792
    invoke-virtual {v2, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1786
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private endDragging(Landroid/view/View;ZZ)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "isFlingToDelete"    # Z
    .param p3, "success"    # Z

    .prologue
    .line 992
    if-nez p2, :cond_0

    .line 993
    if-eqz p3, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher4/DeleteDropTarget;

    if-nez v0, :cond_1

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->exitSpringLoadedDragMode()V

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->unlockScreenOrientation(Z)V

    .line 1001
    return-void
.end method

.method private findAppByComponent(Ljava/util/List;Lcom/android/launcher4/AppInfo;)I
    .locals 5
    .param p2, "item"    # Lcom/android/launcher4/AppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;",
            "Lcom/android/launcher4/AppInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1877
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher4/AppInfo;>;"
    iget-object v4, p2, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1878
    .local v3, "removeComponent":Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1879
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 1885
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 1880
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/AppInfo;

    .line 1881
    .local v1, "info":Lcom/android/launcher4/AppInfo;
    iget-object v4, v1, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1879
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 9

    .prologue
    .line 328
    const/4 v3, -0x1

    .line 329
    .local v3, "i":I
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getCurrentPage()I

    move-result v2

    .line 331
    .local v2, "currentPage":I
    sget-boolean v7, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    if-eqz v7, :cond_3

    .line 332
    iget-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    sget-object v8, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne v7, v8, :cond_1

    .line 333
    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/AppsCustomizeCellLayout;

    .line 335
    .local v4, "layout":Lcom/android/launcher4/AppsCustomizeCellLayout;
    invoke-virtual {v4}, Lcom/android/launcher4/AppsCustomizeCellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 336
    .local v1, "childrenLayout":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    iget v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    iget v8, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountY:I

    mul-int v6, v7, v8

    .line 337
    .local v6, "numItemsPerPage":I
    invoke-virtual {v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 338
    .local v0, "childCount":I
    if-lez v0, :cond_0

    .line 339
    mul-int v7, v2, v6

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    .line 377
    .end local v0    # "childCount":I
    .end local v1    # "childrenLayout":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    .end local v2    # "currentPage":I
    .end local v4    # "layout":Lcom/android/launcher4/AppsCustomizeCellLayout;
    .end local v6    # "numItemsPerPage":I
    :cond_0
    :goto_0
    return v3

    .line 341
    .restart local v2    # "currentPage":I
    :cond_1
    iget-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    sget-object v8, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne v7, v8, :cond_2

    .line 342
    iget-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 343
    .local v5, "numApps":I
    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/PagedViewGridLayout;

    .line 344
    .local v4, "layout":Lcom/android/launcher4/PagedViewGridLayout;
    iget v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    iget v8, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v6, v7, v8

    .line 345
    .restart local v6    # "numItemsPerPage":I
    invoke-virtual {v4}, Lcom/android/launcher4/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 346
    .restart local v0    # "childCount":I
    if-lez v0, :cond_0

    .line 347
    mul-int v7, v2, v6

    add-int/2addr v7, v5

    .line 348
    div-int/lit8 v8, v0, 0x2

    .line 347
    add-int v3, v7, v8

    .line 350
    goto :goto_0

    .line 351
    .end local v0    # "childCount":I
    .end local v4    # "layout":Lcom/android/launcher4/PagedViewGridLayout;
    .end local v5    # "numApps":I
    .end local v6    # "numItemsPerPage":I
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Invalid ContentType"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 354
    :cond_3
    iget v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v2, v7, :cond_4

    .line 355
    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/AppsCustomizeCellLayout;

    .line 357
    .local v4, "layout":Lcom/android/launcher4/AppsCustomizeCellLayout;
    invoke-virtual {v4}, Lcom/android/launcher4/AppsCustomizeCellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 358
    .restart local v1    # "childrenLayout":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    iget v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    iget v8, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountY:I

    mul-int v6, v7, v8

    .line 359
    .restart local v6    # "numItemsPerPage":I
    invoke-virtual {v1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 360
    .restart local v0    # "childCount":I
    if-lez v0, :cond_0

    .line 361
    mul-int v7, v2, v6

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    .line 363
    goto :goto_0

    .line 364
    .end local v0    # "childCount":I
    .end local v1    # "childrenLayout":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    .end local v4    # "layout":Lcom/android/launcher4/AppsCustomizeCellLayout;
    .end local v6    # "numItemsPerPage":I
    :cond_4
    iget-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 365
    .restart local v5    # "numApps":I
    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/PagedViewGridLayout;

    .line 366
    .local v4, "layout":Lcom/android/launcher4/PagedViewGridLayout;
    iget v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    iget v8, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v6, v7, v8

    .line 367
    .restart local v6    # "numItemsPerPage":I
    invoke-virtual {v4}, Lcom/android/launcher4/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 368
    .restart local v0    # "childCount":I
    if-lez v0, :cond_0

    .line 370
    iget v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v7, v2, v7

    mul-int/2addr v7, v6

    .line 369
    add-int/2addr v7, v5

    .line 371
    div-int/lit8 v8, v0, 0x2

    .line 369
    add-int v3, v7, v8

    goto :goto_0
.end method

.method private getSleepForPage(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 1299
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 1300
    .local v0, "pageDiff":I
    const/4 v1, 0x0

    mul-int/lit16 v2, v0, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getTabHost()Lcom/android/launcher4/AppsCustomizeTabHost;
    .locals 2

    .prologue
    .line 1941
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 1942
    const v1, 0x7f110074

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppsCustomizeTabHost;

    .line 1941
    return-object v0
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x1

    .line 1288
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 1289
    .local v0, "pageDiff":I
    if-gtz v0, :cond_0

    .line 1294
    :goto_0
    return v1

    .line 1291
    :cond_0
    if-gt v0, v1, :cond_1

    move v1, v2

    .line 1292
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1294
    goto :goto_0
.end method

.method private getWidgetPageLoadPriority(I)I
    .locals 7
    .param p1, "page"    # I

    .prologue
    .line 1260
    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCurrentPage:I

    .line 1261
    .local v4, "toPage":I
    iget v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNextPage:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 1262
    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNextPage:I

    .line 1270
    :cond_0
    iget-object v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1271
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/AppsCustomizeAsyncTask;>;"
    const v1, 0x7fffffff

    .line 1272
    .local v1, "minPageDiff":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1277
    sub-int v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1278
    .local v2, "rawPageDiff":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v5, v2, v5

    return v5

    .line 1273
    .end local v2    # "rawPageDiff":I
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/AppsCustomizeAsyncTask;

    .line 1274
    .local v3, "task":Lcom/android/launcher4/AppsCustomizeAsyncTask;
    iget v5, v3, Lcom/android/launcher4/AppsCustomizeAsyncTask;->page:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_0
.end method

.method private invalidateOnDataChange()V
    .locals 1

    .prologue
    .line 1837
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1841
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->requestLayout()V

    .line 1846
    :goto_0
    return-void

    .line 1843
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1844
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->invalidatePageData()V

    goto :goto_0
.end method

.method private isFilterWidgets(Ljava/lang/String;)Z
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/launcher4/AppsCustomizePagedView;->containsWidgets:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 531
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 527
    :cond_0
    sget-object v1, Lcom/android/launcher4/AppsCustomizePagedView;->containsWidgets:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    const/4 v1, 0x1

    goto :goto_1

    .line 526
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadWidgetPreviewsInBackground(Lcom/android/launcher4/AppsCustomizeAsyncTask;Lcom/android/launcher4/AsyncTaskPageData;)V
    .locals 6
    .param p1, "task"    # Lcom/android/launcher4/AppsCustomizeAsyncTask;
    .param p2, "data"    # Lcom/android/launcher4/AsyncTaskPageData;

    .prologue
    .line 1511
    if-eqz p1, :cond_0

    .line 1513
    invoke-virtual {p1}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1517
    :cond_0
    iget-object v3, p2, Lcom/android/launcher4/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1518
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v2, p2, Lcom/android/launcher4/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 1519
    .local v2, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1520
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 1533
    :cond_1
    return-void

    .line 1521
    :cond_2
    if-eqz p1, :cond_3

    .line 1523
    invoke-virtual {p1}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1528
    invoke-virtual {p1}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1531
    :cond_3
    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher4/WidgetPreviewLoader;->getPreview(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private onSyncWidgetPageItems(Lcom/android/launcher4/AsyncTaskPageData;)V
    .locals 12
    .param p1, "data"    # Lcom/android/launcher4/AsyncTaskPageData;

    .prologue
    const/4 v11, 0x0

    .line 1536
    iget-boolean v10, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInTransition:Z

    if-eqz v10, :cond_0

    .line 1537
    iget-object v10, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    :goto_0
    return-void

    .line 1541
    :cond_0
    :try_start_0
    iget v5, p1, Lcom/android/launcher4/AsyncTaskPageData;->page:I

    .line 1542
    .local v5, "page":I
    invoke-virtual {p0, v5}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/PagedViewGridLayout;

    .line 1544
    .local v4, "layout":Lcom/android/launcher4/PagedViewGridLayout;
    iget-object v2, p1, Lcom/android/launcher4/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1545
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1546
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 1554
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->enableHwLayersOnVisiblePages()V

    .line 1557
    iget-object v10, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1558
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/AppsCustomizeAsyncTask;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_3

    .line 1565
    invoke-virtual {p1, v11}, Lcom/android/launcher4/AsyncTaskPageData;->cleanup(Z)V

    goto :goto_0

    .line 1547
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/AppsCustomizeAsyncTask;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v4, v1}, Lcom/android/launcher4/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher4/PagedViewWidget;

    .line 1548
    .local v9, "widget":Lcom/android/launcher4/PagedViewWidget;
    if-eqz v9, :cond_2

    .line 1549
    iget-object v10, p1, Lcom/android/launcher4/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 1550
    .local v7, "preview":Landroid/graphics/Bitmap;
    new-instance v10, Lcom/android/launcher4/FastBitmapDrawable;

    invoke-direct {v10, v7}, Lcom/android/launcher4/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10, v1}, Lcom/android/launcher4/PagedViewWidget;->applyPreview(Lcom/android/launcher4/FastBitmapDrawable;I)V

    .line 1546
    .end local v7    # "preview":Landroid/graphics/Bitmap;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1560
    .end local v9    # "widget":Lcom/android/launcher4/PagedViewWidget;
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/AppsCustomizeAsyncTask;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher4/AppsCustomizeAsyncTask;

    .line 1561
    .local v8, "task":Lcom/android/launcher4/AppsCustomizeAsyncTask;
    iget v6, v8, Lcom/android/launcher4/AppsCustomizeAsyncTask;->page:I

    .line 1562
    .local v6, "pageIndex":I
    invoke-direct {p0, v6}, Lcom/android/launcher4/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->setThreadPriority(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1564
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/AppsCustomizeAsyncTask;>;"
    .end local v4    # "layout":Lcom/android/launcher4/PagedViewGridLayout;
    .end local v5    # "page":I
    .end local v6    # "pageIndex":I
    .end local v8    # "task":Lcom/android/launcher4/AppsCustomizeAsyncTask;
    :catchall_0
    move-exception v10

    .line 1565
    invoke-virtual {p1, v11}, Lcom/android/launcher4/AsyncTaskPageData;->cleanup(Z)V

    .line 1566
    throw v10
.end method

.method private preloadWidget(Lcom/android/launcher4/PendingAddWidgetInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher4/PendingAddWidgetInfo;

    .prologue
    .line 718
    iget-object v1, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 719
    .local v1, "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->getDefaultOptionsForWidget(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 721
    .local v0, "options":Landroid/os/Bundle;
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 722
    iput-object v0, p1, Lcom/android/launcher4/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 778
    :goto_0
    return-void

    .line 726
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 727
    new-instance v2, Lcom/android/launcher4/AppsCustomizePagedView$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher4/AppsCustomizePagedView$2;-><init>(Lcom/android/launcher4/AppsCustomizePagedView;Landroid/os/Bundle;Lcom/android/launcher4/PendingAddWidgetInfo;)V

    iput-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 750
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 752
    new-instance v2, Lcom/android/launcher4/AppsCustomizePagedView$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/launcher4/AppsCustomizePagedView$3;-><init>(Lcom/android/launcher4/AppsCustomizePagedView;Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher4/PendingAddWidgetInfo;)V

    iput-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 777
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
    .locals 13
    .param p1, "page"    # I
    .param p3, "cellWidth"    # I
    .param p4, "cellHeight"    # I
    .param p5, "cellCountX"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 1311
    .local p2, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1312
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1326
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->getSleepForPage(I)I

    move-result v9

    .line 1327
    .local v9, "sleepMs":I
    new-instance v0, Lcom/android/launcher4/AsyncTaskPageData;

    .line 1328
    new-instance v5, Lcom/android/launcher4/AppsCustomizePagedView$5;

    invoke-direct {v5, p0, v9}, Lcom/android/launcher4/AppsCustomizePagedView$5;-><init>(Lcom/android/launcher4/AppsCustomizePagedView;I)V

    .line 1344
    new-instance v6, Lcom/android/launcher4/AppsCustomizePagedView$6;

    invoke-direct {v6, p0}, Lcom/android/launcher4/AppsCustomizePagedView$6;-><init>(Lcom/android/launcher4/AppsCustomizePagedView;)V

    .line 1354
    iget-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1327
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/android/launcher4/AsyncTaskCallback;Lcom/android/launcher4/AsyncTaskCallback;Lcom/android/launcher4/WidgetPreviewLoader;)V

    .line 1358
    .local v0, "pageData":Lcom/android/launcher4/AsyncTaskPageData;
    new-instance v10, Lcom/android/launcher4/AppsCustomizeAsyncTask;

    .line 1359
    sget-object v1, Lcom/android/launcher4/AsyncTaskPageData$Type;->LoadWidgetPreviewData:Lcom/android/launcher4/AsyncTaskPageData$Type;

    .line 1358
    invoke-direct {v10, p1, v1}, Lcom/android/launcher4/AppsCustomizeAsyncTask;-><init>(ILcom/android/launcher4/AsyncTaskPageData$Type;)V

    .line 1360
    .local v10, "t":Lcom/android/launcher4/AppsCustomizeAsyncTask;
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 1361
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher4/AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v10, v1, v2}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1362
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    return-void

    .line 1313
    .end local v0    # "pageData":Lcom/android/launcher4/AsyncTaskPageData;
    .end local v9    # "sleepMs":I
    .end local v10    # "t":Lcom/android/launcher4/AppsCustomizeAsyncTask;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher4/AppsCustomizeAsyncTask;

    .line 1314
    .local v11, "task":Lcom/android/launcher4/AppsCustomizeAsyncTask;
    iget v12, v11, Lcom/android/launcher4/AppsCustomizeAsyncTask;->page:I

    .line 1315
    .local v12, "taskPage":I
    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getAssociatedLowerPageBound(I)I

    move-result v1

    if-lt v12, v1, :cond_1

    .line 1316
    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getAssociatedUpperPageBound(I)I

    move-result v1

    if-le v12, v1, :cond_2

    .line 1317
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->cancel(Z)Z

    .line 1318
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1320
    :cond_2
    invoke-direct {p0, v12}, Lcom/android/launcher4/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0
.end method

.method private removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 5
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
    .line 1891
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1892
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 1899
    return-void

    .line 1893
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/AppInfo;

    .line 1894
    .local v1, "info":Lcom/android/launcher4/AppInfo;
    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->findAppByComponent(Ljava/util/List;Lcom/android/launcher4/AppInfo;)I

    move-result v3

    .line 1895
    .local v3, "removeIndex":I
    const/4 v4, -0x1

    if-le v3, v4, :cond_1

    .line 1896
    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1892
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .locals 3
    .param p1, "layout"    # Landroid/view/ViewGroup;
    .param p2, "visibility"    # I

    .prologue
    .line 1190
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1191
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1194
    return-void

    .line 1192
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setupPage(Lcom/android/launcher4/AppsCustomizeCellLayout;)V
    .locals 5
    .param p1, "layout"    # Lcom/android/launcher4/AppsCustomizeCellLayout;

    .prologue
    const/high16 v4, -0x80000000

    .line 1197
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountY:I

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher4/AppsCustomizeCellLayout;->setGridSize(II)V

    .line 1207
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 1208
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentWidth:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1210
    .local v1, "widthSpec":I
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentHeight:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1212
    .local v0, "heightSpec":I
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/launcher4/AppsCustomizeCellLayout;->setMinimumWidth(I)V

    .line 1213
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher4/AppsCustomizeCellLayout;->measure(II)V

    .line 1214
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 1215
    return-void
.end method

.method private setupPage(Lcom/android/launcher4/PagedViewGridLayout;)V
    .locals 4
    .param p1, "layout"    # Lcom/android/launcher4/PagedViewGridLayout;

    .prologue
    const/high16 v3, -0x80000000

    .line 1372
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1374
    .local v1, "widthSpec":I
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentHeight:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1376
    .local v0, "heightSpec":I
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/launcher4/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 1377
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher4/PagedViewGridLayout;->measure(II)V

    .line 1378
    return-void
.end method

.method private updateCurrentTab(I)V
    .locals 3
    .param p1, "currentPage"    # I

    .prologue
    .line 1169
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher4/AppsCustomizeTabHost;

    move-result-object v0

    .line 1170
    .local v0, "tabHost":Lcom/android/launcher4/AppsCustomizeTabHost;
    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1172
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1173
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    if-lt p1, v2, :cond_1

    .line 1175
    sget-object v2, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    .line 1174
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1175
    if-nez v2, :cond_1

    .line 1176
    sget-object v2, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    .line 1184
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1177
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v2, :cond_0

    .line 1179
    sget-object v2, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    .line 1178
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1179
    if-nez v2, :cond_0

    .line 1180
    sget-object v2, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    .prologue
    .line 428
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    .line 430
    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 429
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 434
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    .line 435
    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 434
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    .line 436
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumWidgetPages:I

    goto :goto_0
.end method

.method private updatePageCountsAndInvalidateData()V
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInBulkBind:Z

    if-eqz v0, :cond_0

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNeedToUpdatePageCountsAndInvalidateData:Z

    .line 624
    :goto_0
    return-void

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->updatePageCounts()V

    .line 621
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNeedToUpdatePageCountsAndInvalidateData:Z

    goto :goto_0
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 1870
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    sget-boolean v0, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v0, :cond_0

    .line 1871
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1872
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->updatePageCountsAndInvalidateData()V

    .line 1874
    :cond_0
    return-void
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 951
    invoke-super {p0, p1}, Lcom/android/launcher4/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 980
    :goto_0
    return v0

    .line 954
    :cond_0
    instance-of v1, p1, Lcom/android/launcher4/PagedViewIcon;

    if-eqz v1, :cond_2

    .line 955
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->beginDraggingApplication(Landroid/view/View;)V

    .line 964
    :cond_1
    new-instance v0, Lcom/android/launcher4/AppsCustomizePagedView$4;

    invoke-direct {v0, p0}, Lcom/android/launcher4/AppsCustomizePagedView$4;-><init>(Lcom/android/launcher4/AppsCustomizePagedView;)V

    .line 978
    const-wide/16 v2, 0x96

    .line 964
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher4/AppsCustomizePagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 980
    const/4 v0, 0x1

    goto :goto_0

    .line 956
    :cond_2
    instance-of v1, p1, Lcom/android/launcher4/PagedViewWidget;

    if-eqz v1, :cond_1

    .line 957
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->beginDraggingWidget(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method public cleanUpShortPress(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDraggingWidget:Z

    if-nez v0, :cond_0

    .line 839
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher4/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 841
    :cond_0
    return-void
.end method

.method public clearAllWidgetPages()V
    .locals 5

    .prologue
    .line 1098
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1099
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 1100
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 1107
    return-void

    .line 1101
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1102
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher4/PagedViewGridLayout;

    if-eqz v3, :cond_1

    .line 1103
    check-cast v2, Lcom/android/launcher4/PagedViewGridLayout;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher4/PagedViewGridLayout;->removeAllViewsOnPage()V

    .line 1104
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1100
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 684
    return-void
.end method

.method public dumpState()V
    .locals 0

    .prologue
    .line 1948
    return-void
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 5
    .param p1, "page"    # I

    .prologue
    .line 2006
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 2007
    .local v0, "count":I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2010
    .local v2, "windowSize":I
    add-int/lit8 v3, p1, -0x2

    sub-int v4, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    .line 2009
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2011
    .local v1, "windowMinIndex":I
    return v1
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 5
    .param p1, "page"    # I

    .prologue
    .line 2015
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    .line 2016
    .local v0, "count":I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2019
    .local v2, "windowSize":I
    add-int/lit8 v3, p1, 0x2

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2020
    add-int/lit8 v4, v0, -0x1

    .line 2019
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2021
    .local v1, "windowMaxIndex":I
    return v1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentType()Lcom/android/launcher4/AppsCustomizePagedView$ContentType;
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2025
    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNextPage:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNextPage:I

    .line 2026
    .local v1, "page":I
    :goto_0
    const v2, 0x7f0c0047

    .line 2027
    .local v2, "stringId":I
    const/4 v0, 0x0

    .line 2028
    .local v0, "count":I
    sget-boolean v3, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    if-eqz v3, :cond_3

    .line 2029
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    sget-object v4, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne v3, v4, :cond_1

    .line 2030
    const v2, 0x7f0c0049

    .line 2031
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    .line 2048
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2025
    .end local v0    # "count":I
    .end local v1    # "page":I
    .end local v2    # "stringId":I
    :cond_0
    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCurrentPage:I

    goto :goto_0

    .line 2032
    .restart local v0    # "count":I
    .restart local v1    # "page":I
    .restart local v2    # "stringId":I
    :cond_1
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    sget-object v4, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne v3, v4, :cond_2

    .line 2033
    const v2, 0x7f0c004a

    .line 2034
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 2035
    goto :goto_1

    .line 2036
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid ContentType"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2039
    :cond_3
    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v3, :cond_4

    .line 2040
    const v2, 0x7f0c0049

    .line 2041
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    .line 2042
    goto :goto_1

    .line 2043
    :cond_4
    const v2, 0x7f0c004a

    .line 2044
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumWidgetPages:I

    goto :goto_1
.end method

.method getDefaultOptionsForWidget(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 9
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p2, "info"    # Lcom/android/launcher4/PendingAddWidgetInfo;

    .prologue
    .line 693
    const/4 v1, 0x0

    .line 694
    .local v1, "options":Landroid/os/Bundle;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 695
    iget-object v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    iget v6, p2, Lcom/android/launcher4/PendingAddWidgetInfo;->spanX:I

    .line 696
    iget v7, p2, Lcom/android/launcher4/PendingAddWidgetInfo;->spanY:I

    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 695
    invoke-static {v5, v6, v7, v8}, Lcom/android/launcher4/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher4/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 698
    iget-object v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v6, p2, Lcom/android/launcher4/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    const/4 v7, 0x0

    .line 697
    invoke-static {v5, v6, v7}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 700
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 701
    .local v0, "density":F
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v3, v5

    .line 702
    .local v3, "xPaddingDips":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v4, v5

    .line 704
    .local v4, "yPaddingDips":I
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "options":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 705
    .restart local v1    # "options":Landroid/os/Bundle;
    const-string v5, "appWidgetMinWidth"

    .line 706
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    .line 705
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 707
    const-string v5, "appWidgetMinHeight"

    .line 708
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    .line 707
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 709
    const-string v5, "appWidgetMaxWidth"

    .line 710
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    .line 709
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 711
    const-string v5, "appWidgetMaxHeight"

    .line 712
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    .line 711
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 714
    .end local v0    # "density":F
    .end local v2    # "padding":Landroid/graphics/Rect;
    .end local v3    # "xPaddingDips":I
    .end local v4    # "yPaddingDips":I
    :cond_0
    return-object v1
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1649
    invoke-virtual {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->indexToPage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/AppsCustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageContentWidth()I
    .locals 1

    .prologue
    .line 1808
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentWidth:I

    return v0
.end method

.method getPageForComponent(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 396
    if-gez p1, :cond_0

    .line 397
    const/4 v1, 0x0

    .line 413
    :goto_0
    return v1

    .line 399
    :cond_0
    sget-boolean v1, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 401
    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountY:I

    mul-int v0, v1, v2

    .line 402
    .local v0, "numItemsPerPage":I
    div-int v1, p1, v0

    goto :goto_0

    .line 404
    .end local v0    # "numItemsPerPage":I
    :cond_1
    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v0, v1, v2

    .line 405
    .restart local v0    # "numItemsPerPage":I
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    div-int/2addr v1, v0

    goto :goto_0

    .line 408
    .end local v0    # "numItemsPerPage":I
    :cond_2
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 409
    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountY:I

    mul-int v0, v1, v2

    .line 410
    .restart local v0    # "numItemsPerPage":I
    div-int v1, p1, v0

    goto :goto_0

    .line 412
    .end local v0    # "numItemsPerPage":I
    :cond_3
    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v0, v1, v2

    .line 413
    .restart local v0    # "numItemsPerPage":I
    sget-boolean v1, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p1, v1

    .line 414
    div-int/2addr v1, v0

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    .line 415
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, p1, v2

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 388
    :cond_0
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public iconPressed(Lcom/android/launcher4/PagedViewIcon;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher4/PagedViewIcon;

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher4/PagedViewIcon;

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher4/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher4/PagedViewIcon;->resetDrawableState()V

    .line 1987
    :cond_0
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher4/PagedViewIcon;

    .line 1988
    return-void
.end method

.method protected indexToPage(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1654
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 305
    invoke-super {p0}, Lcom/android/launcher4/PagedViewWithDraggableItems;->init()V

    .line 306
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCenterPagesVertically:Z

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 309
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 311
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 310
    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->setDragSlopeThreshold(F)V

    .line 312
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 629
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->isAllAppsVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 630
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher4/Workspace;->isSwitchingState()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    instance-of v6, p1, Lcom/android/launcher4/PagedViewIcon;

    if-eqz v6, :cond_3

    .line 635
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AppInfo;

    .line 638
    .local v0, "appInfo":Lcom/android/launcher4/AppInfo;
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher4/PagedViewIcon;

    if-eqz v6, :cond_2

    .line 639
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher4/PagedViewIcon;

    invoke-virtual {v6}, Lcom/android/launcher4/PagedViewIcon;->lockDrawableState()V

    .line 643
    :cond_2
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v7, v0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, p1, v7, v0}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 644
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getStats()Lcom/android/launcher4/Stats;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Lcom/android/launcher4/Stats;->recordLaunch(Landroid/content/Intent;)V

    goto :goto_0

    .line 648
    .end local v0    # "appInfo":Lcom/android/launcher4/AppInfo;
    :cond_3
    instance-of v6, p1, Lcom/android/launcher4/PagedViewWidget;

    if-eqz v6, :cond_0

    .line 650
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    if-eqz v6, :cond_4

    .line 651
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 653
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 654
    const v7, 0x7f0c0010

    .line 653
    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    .line 655
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 658
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 659
    const v7, 0x7f0d001c

    .line 658
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v2, v6

    .line 660
    .local v2, "offsetY":F
    const v6, 0x7f110014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 661
    .local v3, "p":Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/launcher4/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 663
    .local v1, "bounce":Landroid/animation/AnimatorSet;
    const-string v6, "translationY"

    new-array v7, v8, [F

    aput v2, v7, v9

    .line 662
    invoke-static {v3, v6, v7}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 664
    .local v5, "tyuAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x7d

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 666
    const-string v6, "translationY"

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    .line 665
    invoke-static {v3, v6, v7}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 667
    .local v4, "tydAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 668
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 669
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 670
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method protected onDataReady(II)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v12, -0x80000000

    .line 439
    iget-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    if-nez v7, :cond_0

    .line 440
    new-instance v7, Lcom/android/launcher4/WidgetPreviewLoader;

    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-direct {v7, v8}, Lcom/android/launcher4/WidgetPreviewLoader;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    .line 446
    :cond_0
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 447
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 448
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    iget-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

    iget v8, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    .line 449
    iget v9, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    iget v10, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    .line 450
    iget v11, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    .line 448
    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/launcher4/PagedViewCellLayout;->setPadding(IIII)V

    .line 451
    iget v7, v1, Lcom/android/launcher4/DeviceProfile;->allAppsNumCols:I

    iput v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    .line 452
    iget v7, v1, Lcom/android/launcher4/DeviceProfile;->allAppsNumRows:I

    iput v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountY:I

    .line 453
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->updatePageCounts()V

    .line 457
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    .line 458
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 457
    iput v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentWidth:I

    .line 459
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    .line 460
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 459
    iput v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentHeight:I

    .line 461
    const-string v7, "hy"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mContentWidth1111111:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mContentHeight:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentWidth:I

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 464
    .local v6, "widthSpec":I
    iget v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentHeight:I

    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 466
    .local v2, "heightSpec":I
    iget-object v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

    invoke-virtual {v7, v6, v2}, Lcom/android/launcher4/PagedViewCellLayout;->measure(II)V

    .line 468
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher4/AppsCustomizeTabHost;

    move-result-object v3

    .line 469
    .local v3, "host":Lcom/android/launcher4/AppsCustomizeTabHost;
    invoke-virtual {v3}, Lcom/android/launcher4/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v4

    .line 472
    .local v4, "hostIsTransitioning":Z
    iget v7, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    invoke-virtual {p0, v7}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageForComponent(I)I

    move-result v5

    .line 473
    .local v5, "page":I
    const/4 v7, 0x0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7, v4}, Lcom/android/launcher4/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 480
    if-nez v4, :cond_1

    .line 481
    new-instance v7, Lcom/android/launcher4/AppsCustomizePagedView$1;

    invoke-direct {v7, p0}, Lcom/android/launcher4/AppsCustomizePagedView$1;-><init>(Lcom/android/launcher4/AppsCustomizePagedView;)V

    invoke-virtual {p0, v7}, Lcom/android/launcher4/AppsCustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 488
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1093
    invoke-super {p0}, Lcom/android/launcher4/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 1094
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1095
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher4/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1046
    if-eqz p3, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1049
    :cond_0
    invoke-direct {p0, p1, v5, p4}, Lcom/android/launcher4/AppsCustomizePagedView;->endDragging(Landroid/view/View;ZZ)V

    .line 1054
    if-nez p4, :cond_3

    .line 1055
    const/4 v3, 0x0

    .line 1056
    .local v3, "showOutOfSpaceMessage":Z
    instance-of v6, p1, Lcom/android/launcher4/Workspace;

    if-eqz v6, :cond_1

    .line 1057
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher4/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    .local v0, "currentScreen":I
    move-object v4, p1

    .line 1058
    check-cast v4, Lcom/android/launcher4/Workspace;

    .line 1060
    .local v4, "workspace":Lcom/android/launcher4/Workspace;
    invoke-virtual {v4, v0}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1059
    check-cast v2, Lcom/android/launcher4/CellLayout;

    .line 1061
    .local v2, "layout":Lcom/android/launcher4/CellLayout;
    iget-object v1, p2, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher4/ItemInfo;

    .line 1062
    .local v1, "itemInfo":Lcom/android/launcher4/ItemInfo;
    if-eqz v2, :cond_1

    .line 1063
    invoke-virtual {v2, v1}, Lcom/android/launcher4/CellLayout;->calculateSpans(Lcom/android/launcher4/ItemInfo;)V

    .line 1064
    const/4 v6, 0x0

    .line 1065
    iget v7, v1, Lcom/android/launcher4/ItemInfo;->spanX:I

    iget v8, v1, Lcom/android/launcher4/ItemInfo;->spanY:I

    .line 1064
    invoke-virtual {v2, v6, v7, v8}, Lcom/android/launcher4/CellLayout;->findCellForSpan([III)Z

    move-result v6

    .line 1065
    if-eqz v6, :cond_4

    move v3, v5

    .line 1068
    .end local v0    # "currentScreen":I
    .end local v1    # "itemInfo":Lcom/android/launcher4/ItemInfo;
    .end local v2    # "layout":Lcom/android/launcher4/CellLayout;
    .end local v4    # "workspace":Lcom/android/launcher4/Workspace;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 1069
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v6, v5}, Lcom/android/launcher4/Launcher;->showOutOfSpaceMessage(Z)V

    .line 1072
    :cond_2
    iput-boolean v5, p2, Lcom/android/launcher4/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1074
    .end local v3    # "showOutOfSpaceMessage":Z
    :cond_3
    invoke-direct {p0, p4}, Lcom/android/launcher4/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 1075
    iput-boolean v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDraggingWidget:Z

    goto :goto_0

    .line 1064
    .restart local v0    # "currentScreen":I
    .restart local v1    # "itemInfo":Lcom/android/launcher4/ItemInfo;
    .restart local v2    # "layout":Lcom/android/launcher4/CellLayout;
    .restart local v3    # "showOutOfSpaceMessage":Z
    .restart local v4    # "workspace":Lcom/android/launcher4/Workspace;
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 315
    invoke-super {p0}, Lcom/android/launcher4/PagedViewWithDraggableItems;->onFinishInflate()V

    .line 317
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 318
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 321
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1081
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->endDragging(Landroid/view/View;ZZ)V

    .line 1082
    invoke-direct {p0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 1083
    iput-boolean v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 1084
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 675
    invoke-static {p1, p2, p3}, Lcom/android/launcher4/FocusHelper;->handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher4/Launcher;ZZ)V
    .locals 5
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1029
    iput-boolean v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInTransition:Z

    .line 1030
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1033
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1034
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1037
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1038
    if-eqz p3, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1039
    return-void

    .line 1030
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/AsyncTaskPageData;

    .line 1031
    .local v0, "d":Lcom/android/launcher4/AsyncTaskPageData;
    invoke-direct {p0, v0}, Lcom/android/launcher4/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher4/AsyncTaskPageData;)V

    goto :goto_0

    .line 1034
    .end local v0    # "d":Lcom/android/launcher4/AsyncTaskPageData;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1035
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1038
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher4/Launcher;ZZ)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 1011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInTransition:Z

    .line 1012
    if-eqz p3, :cond_0

    .line 1013
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1015
    :cond_0
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher4/Launcher;ZZ)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z

    .prologue
    .line 1020
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher4/Launcher;F)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "t"    # F

    .prologue
    .line 1024
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 509
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 510
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 511
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 512
    sget-boolean v2, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->setDataIsReady()V

    .line 514
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher4/AppsCustomizePagedView;->setMeasuredDimension(II)V

    .line 515
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher4/AppsCustomizePagedView;->onDataReady(II)V

    .line 519
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher4/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 520
    return-void
.end method

.method public onPackagesUpdated(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "widgetsAndShortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v1

    .line 537
    .local v1, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v1}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v3

    .line 538
    .local v3, "grid":Lcom/android/launcher4/DeviceProfile;
    iget-object v11, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 539
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 602
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->updatePageCountsAndInvalidateData()V

    .line 603
    return-void

    .line 539
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 540
    .local v7, "o":Ljava/lang/Object;
    instance-of v12, v7, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v12, :cond_0

    move-object v9, v7

    .line 541
    check-cast v9, Landroid/appwidget/AppWidgetProviderInfo;

    .line 543
    .local v9, "widget":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v12}, Lcom/android/launcher4/LauncherAppState;->shouldShowAppOrWidgetProvider(Landroid/content/ComponentName;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 547
    iget-object v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/launcher4/AppsCustomizePagedView;->isFilterWidgets(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 551
    sget v12, Lshare/Config;->CUSTOMER_ID:I

    const/16 v13, 0x8

    if-ne v12, v13, :cond_2

    .line 552
    iget-object v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "antutu"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 553
    iget-object v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 554
    const-string v13, "ludashi"

    .line 553
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 554
    if-nez v12, :cond_0

    .line 559
    :cond_2
    iget-object v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 560
    iget v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v12, :cond_0

    iget v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v12, :cond_0

    .line 563
    iget-object v12, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v12, v9}, Lcom/android/launcher4/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v8

    .line 564
    .local v8, "spanXY":[I
    iget-object v12, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v12, v9}, Lcom/android/launcher4/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v5

    .line 566
    .local v5, "minSpanXY":[I
    const/4 v12, 0x0

    aget v12, v8, v12

    const/4 v13, 0x0

    aget v13, v5, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 567
    .local v4, "minSpanX":I
    const/4 v12, 0x1

    aget v12, v8, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 568
    .local v6, "minSpanY":I
    iget v12, v3, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v12, v12

    if-gt v4, v12, :cond_0

    .line 569
    iget v12, v3, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v12, v12

    if-gt v6, v12, :cond_0

    .line 571
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 572
    .local v2, "bFlag":Ljava/lang/Boolean;
    sget-object v12, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v12}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 573
    const v13, 0x7f0a0015

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-nez v12, :cond_3

    .line 574
    iget-object v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 575
    iget-object v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 576
    const-string v13, "com.android.launcher"

    .line 575
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 576
    if-eqz v12, :cond_3

    .line 577
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 582
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 583
    iget-object v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.android.launcher"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 584
    sget-object v12, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v12}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0029

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 585
    .local v0, "a":I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "com.android.launcher"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 586
    .local v10, "widgetpackagename":Ljava/lang/String;
    iget-object v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 587
    iget-object v12, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 590
    .end local v0    # "a":I
    .end local v10    # "widgetpackagename":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 1813
    invoke-super {p0}, Lcom/android/launcher4/PagedViewWithDraggableItems;->onPageEndMoving()V

    .line 1814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1818
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 1819
    return-void
.end method

.method public onShortPress(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher4/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    .line 789
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher4/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 791
    :cond_0
    new-instance v1, Lcom/android/launcher4/PendingAddWidgetInfo;

    .line 792
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/PendingAddWidgetInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher4/PendingAddWidgetInfo;-><init>(Lcom/android/launcher4/PendingAddWidgetInfo;)V

    .line 791
    iput-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher4/PendingAddWidgetInfo;

    .line 793
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher4/PendingAddWidgetInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher4/AppsCustomizePagedView;->preloadWidget(Lcom/android/launcher4/PendingAddWidgetInfo;)V

    .line 794
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1799
    invoke-virtual {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->acceleratedOverScroll(F)V

    .line 1800
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 1902
    .local p1, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    sget-boolean v0, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v0, :cond_0

    .line 1903
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1904
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->updatePageCountsAndInvalidateData()V

    .line 1906
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 1924
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 1926
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher4/AppsCustomizeTabHost;

    move-result-object v0

    .line 1927
    .local v0, "tabHost":Lcom/android/launcher4/AppsCustomizeTabHost;
    invoke-virtual {v0}, Lcom/android/launcher4/AppsCustomizeTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1928
    .local v1, "tag":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1930
    sget-object v2, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    .line 1929
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1930
    if-nez v2, :cond_0

    .line 1931
    sget-object v2, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher4/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V

    .line 1935
    :cond_0
    iget v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCurrentPage:I

    if-eqz v2, :cond_1

    .line 1936
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher4/AppsCustomizePagedView;->invalidatePageData(I)V

    .line 1938
    :cond_1
    return-void
.end method

.method public resetDrawableState()V
    .locals 2

    .prologue
    .line 1991
    const-string v0, "hy"

    const-string v1, "mAppsCustomizeContentresetDrawableState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher4/PagedViewIcon;

    if-eqz v0, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher4/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher4/PagedViewIcon;->resetDrawableState()V

    .line 1994
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher4/PagedViewIcon;

    .line 1996
    :cond_0
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 422
    if-gez p1, :cond_0

    .line 425
    :goto_0
    return-void

    .line 424
    :cond_0
    iput p1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 20
    .param p1, "screenCenter"    # I

    .prologue
    .line 1661
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/AppsCustomizePagedView;->isLayoutRtl()Z

    move-result v7

    .line 1662
    .local v7, "isRtl":Z
    invoke-super/range {p0 .. p1}, Lcom/android/launcher4/PagedViewWithDraggableItems;->screenScrolled(I)V

    .line 1664
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-lt v3, v0, :cond_0

    .line 1756
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/AppsCustomizePagedView;->enableHwLayersOnVisiblePages()V

    .line 1757
    return-void

    .line 1665
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    .line 1666
    .local v15, "v":Landroid/view/View;
    if-eqz v15, :cond_1

    .line 1667
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15, v3}, Lcom/android/launcher4/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v13

    .line 1671
    .local v13, "scrollProgress":F
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1672
    .local v8, "maxScrollProgress":F
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v0, v13}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1674
    .local v9, "minScrollProgress":F
    if-eqz v7, :cond_2

    .line 1675
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v14, v8, v17

    .line 1676
    .local v14, "translationX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher4/Workspace$ZInterpolator;

    move-object/from16 v17, v0

    .line 1677
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 1676
    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher4/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result v4

    .line 1683
    .local v4, "interpolatedProgress":F
    :goto_1
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v4

    .line 1684
    sget v18, Lcom/android/launcher4/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    mul-float v18, v18, v4

    .line 1683
    add-float v12, v17, v18

    .line 1687
    .local v12, "scale":F
    if-eqz v7, :cond_3

    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-lez v17, :cond_3

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    .line 1689
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v19

    sub-float v18, v18, v19

    .line 1688
    invoke-virtual/range {v17 .. v18}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1700
    .local v2, "alpha":F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mDensity:F

    move/from16 v17, v0

    sget v18, Lcom/android/launcher4/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    mul-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 1701
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1702
    .local v11, "pageWidth":I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 1705
    .local v10, "pageHeight":I
    if-eqz v7, :cond_5

    const/high16 v17, 0x3f800000    # 1.0f

    sget v18, Lcom/android/launcher4/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    sub-float v16, v17, v18

    .line 1707
    .local v16, "xPivot":F
    :goto_3
    if-eqz v7, :cond_7

    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-lez v17, :cond_6

    const/4 v5, 0x1

    .line 1709
    .local v5, "isOverscrollingFirstPage":Z
    :goto_4
    if-eqz v7, :cond_a

    const/16 v17, 0x0

    cmpg-float v17, v13, v17

    if-gez v17, :cond_9

    const/4 v6, 0x1

    .line 1712
    .local v6, "isOverscrollingLastPage":Z
    :goto_5
    if-nez v3, :cond_c

    if-eqz v5, :cond_c

    .line 1714
    int-to-float v0, v11

    move/from16 v17, v0

    mul-float v17, v17, v16

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1715
    sget v17, Lcom/android/launcher4/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    .line 1716
    mul-float v17, v17, v13

    .line 1715
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1717
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1718
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1721
    const/4 v14, 0x0

    .line 1740
    :goto_6
    invoke-virtual {v15, v14}, Landroid/view/View;->setTranslationX(F)V

    .line 1741
    invoke-virtual {v15, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1742
    invoke-virtual {v15, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1743
    invoke-virtual {v15, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1748
    const/16 v17, 0x0

    cmpl-float v17, v2, v17

    if-nez v17, :cond_e

    .line 1749
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1664
    .end local v2    # "alpha":F
    .end local v4    # "interpolatedProgress":F
    .end local v5    # "isOverscrollingFirstPage":Z
    .end local v6    # "isOverscrollingLastPage":Z
    .end local v8    # "maxScrollProgress":F
    .end local v9    # "minScrollProgress":F
    .end local v10    # "pageHeight":I
    .end local v11    # "pageWidth":I
    .end local v12    # "scale":F
    .end local v13    # "scrollProgress":F
    .end local v14    # "translationX":F
    .end local v16    # "xPivot":F
    :cond_1
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1679
    .restart local v8    # "maxScrollProgress":F
    .restart local v9    # "minScrollProgress":F
    .restart local v13    # "scrollProgress":F
    :cond_2
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v14, v9, v17

    .line 1680
    .restart local v14    # "translationX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher4/Workspace$ZInterpolator;

    move-object/from16 v17, v0

    .line 1681
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 1680
    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher4/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result v4

    .restart local v4    # "interpolatedProgress":F
    goto/16 :goto_1

    .line 1690
    .restart local v12    # "scale":F
    :cond_3
    if-nez v7, :cond_4

    const/16 v17, 0x0

    cmpg-float v17, v13, v17

    if-gez v17, :cond_4

    .line 1691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    .line 1692
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v19

    sub-float v18, v18, v19

    .line 1691
    invoke-virtual/range {v17 .. v18}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1693
    .restart local v2    # "alpha":F
    goto/16 :goto_2

    .line 1696
    .end local v2    # "alpha":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v17, v0

    .line 1697
    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, v13

    invoke-virtual/range {v17 .. v18}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    .line 1696
    .restart local v2    # "alpha":F
    goto/16 :goto_2

    .line 1706
    .restart local v10    # "pageHeight":I
    .restart local v11    # "pageWidth":I
    :cond_5
    sget v16, Lcom/android/launcher4/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    goto/16 :goto_3

    .line 1707
    .restart local v16    # "xPivot":F
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1708
    :cond_7
    const/16 v17, 0x0

    cmpg-float v17, v13, v17

    if-gez v17, :cond_8

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1709
    .restart local v5    # "isOverscrollingFirstPage":Z
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1710
    :cond_a
    const/16 v17, 0x0

    cmpl-float v17, v13, v17

    if-lez v17, :cond_b

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1722
    .restart local v6    # "isOverscrollingLastPage":Z
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v3, v0, :cond_d

    .line 1723
    if-eqz v6, :cond_d

    .line 1725
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v16

    int-to-float v0, v11

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1726
    sget v17, Lcom/android/launcher4/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    .line 1727
    mul-float v17, v17, v13

    .line 1726
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1728
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1729
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1732
    const/4 v14, 0x0

    .line 1733
    goto/16 :goto_6

    .line 1734
    :cond_d
    int-to-float v0, v10

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1735
    int-to-float v0, v11

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1736
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_6

    .line 1750
    :cond_e
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-eqz v17, :cond_1

    .line 1751
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 1849
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    sget-boolean v0, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v0, :cond_0

    .line 1850
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 1851
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher4/LauncherModel;->getAppNameComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1852
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->updatePageCountsAndInvalidateData()V

    .line 1854
    :cond_0
    return-void
.end method

.method public setBulkBind(Z)V
    .locals 1
    .param p1, "bulkBind"    # Z

    .prologue
    .line 606
    if-eqz p1, :cond_1

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInBulkBind:Z

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mInBulkBind:Z

    .line 610
    iget-boolean v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNeedToUpdatePageCountsAndInvalidateData:Z

    if-eqz v0, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->updatePageCountsAndInvalidateData()V

    goto :goto_0
.end method

.method public setContentType(Lcom/android/launcher4/AppsCustomizePagedView$ContentType;)V
    .locals 2
    .param p1, "type"    # Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .prologue
    .line 1130
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getCurrentPage()I

    move-result v0

    .line 1131
    .local v0, "page":I
    sget-boolean v1, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    if-eqz v1, :cond_1

    .line 1132
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-eq v1, p1, :cond_0

    .line 1133
    const/4 v0, 0x0

    .line 1142
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    .line 1143
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->invalidatePageData(IZ)V

    .line 1145
    return-void

    .line 1136
    :cond_1
    sget-object v1, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne p1, v1, :cond_2

    .line 1137
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    .line 1138
    goto :goto_0

    .line 1139
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/DragController;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p2, "dragController"    # Lcom/android/launcher4/DragController;

    .prologue
    .line 1825
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 1826
    iput-object p2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mDragController:Lcom/android/launcher4/DragController;

    .line 1827
    return-void
.end method

.method showAllAppsCling()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 491
    iget-boolean v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    iput-boolean v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    .line 494
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 495
    .local v0, "offset":[I
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

    .line 496
    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mClingFocusedX:I

    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mClingFocusedY:I

    .line 495
    invoke-virtual {v2, v3, v4}, Lcom/android/launcher4/PagedViewCellLayout;->estimateCellPosition(II)[I

    move-result-object v1

    .line 497
    .local v1, "pos":[I
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher4/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 501
    aget v2, v1, v6

    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher4/PagedViewCellLayout;

    .line 502
    invoke-virtual {v4}, Lcom/android/launcher4/PagedViewCellLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    aget v4, v0, v6

    add-int/2addr v3, v4

    .line 501
    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 503
    aget v2, v1, v5

    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher4/DragLayer;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 505
    .end local v0    # "offset":[I
    .end local v1    # "pos":[I
    :cond_0
    return-void
.end method

.method protected snapToPage(III)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    .line 1152
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher4/PagedViewWithDraggableItems;->snapToPage(III)V

    .line 1153
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->updateCurrentTab(I)V

    .line 1155
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1156
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher4/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1166
    return-void

    .line 1157
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/AppsCustomizeAsyncTask;

    .line 1158
    .local v2, "task":Lcom/android/launcher4/AppsCustomizeAsyncTask;
    iget v1, v2, Lcom/android/launcher4/AppsCustomizeAsyncTask;->page:I

    .line 1159
    .local v1, "pageIndex":I
    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNextPage:I

    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCurrentPage:I

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v1, v3, :cond_2

    .line 1160
    :cond_1
    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNextPage:I

    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCurrentPage:I

    if-ge v3, v4, :cond_3

    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mCurrentPage:I

    if-gt v1, v3, :cond_3

    .line 1161
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/launcher4/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 1163
    :cond_3
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/android/launcher4/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 1088
    const/4 v0, 0x1

    return v0
.end method

.method public surrender()V
    .locals 0

    .prologue
    .line 1976
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1977
    return-void
.end method

.method public syncAppsPageItems(IZ)V
    .locals 20
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 1219
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/AppsCustomizePagedView;->isLayoutRtl()Z

    move-result v13

    .line 1220
    .local v13, "isRtl":Z
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountY:I

    mul-int v15, v5, v7

    .line 1221
    .local v15, "numCells":I
    mul-int v16, p1, v15

    .line 1222
    .local v16, "startIndex":I
    add-int v5, v16, v15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1223
    .local v9, "endIndex":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/AppsCustomizeCellLayout;

    .line 1225
    .local v3, "layout":Lcom/android/launcher4/AppsCustomizeCellLayout;
    invoke-virtual {v3}, Lcom/android/launcher4/AppsCustomizeCellLayout;->removeAllViewsOnPage()V

    .line 1226
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    .local v14, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v10, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    move/from16 v6, v16

    .local v6, "i":I
    :goto_0
    if-lt v6, v9, :cond_0

    .line 1251
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/AppsCustomizePagedView;->enableHwLayersOnVisiblePages()V

    .line 1252
    return-void

    .line 1229
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher4/AppInfo;

    .line 1230
    .local v12, "info":Lcom/android/launcher4/AppInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1231
    const v7, 0x7f040009

    const/4 v8, 0x0

    .line 1230
    invoke-virtual {v5, v7, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/PagedViewIcon;

    .line 1232
    .local v4, "icon":Lcom/android/launcher4/PagedViewIcon;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v4, v12, v5, v0}, Lcom/android/launcher4/PagedViewIcon;->applyFromApplicationInfo(Lcom/android/launcher4/AppInfo;ZLcom/android/launcher4/PagedViewIcon$PressedCallback;)V

    .line 1233
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/launcher4/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1234
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/launcher4/PagedViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1235
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/launcher4/PagedViewIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1236
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/launcher4/PagedViewIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1238
    sub-int v11, v6, v16

    .line 1239
    .local v11, "index":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    rem-int v17, v11, v5

    .line 1240
    .local v17, "x":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    div-int v18, v11, v5

    .line 1241
    .local v18, "y":I
    if-eqz v13, :cond_1

    .line 1242
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mCellCountX:I

    sub-int v5, v5, v17

    add-int/lit8 v17, v5, -0x1

    .line 1244
    :cond_1
    const/4 v5, -0x1

    .line 1245
    new-instance v7, Lcom/android/launcher4/CellLayout$LayoutParams;

    const/4 v8, 0x1

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v7, v0, v1, v8, v2}, Lcom/android/launcher4/CellLayout$LayoutParams;-><init>(IIII)V

    const/4 v8, 0x0

    .line 1244
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher4/AppsCustomizeCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/CellLayout$LayoutParams;Z)Z

    .line 1247
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1248
    iget-object v5, v12, Lcom/android/launcher4/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 2
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 1627
    sget-boolean v0, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    if-eqz v0, :cond_1

    .line 1628
    iget-object v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    sget-object v1, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne v0, v1, :cond_0

    .line 1629
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V

    .line 1642
    :goto_0
    return-void

    .line 1631
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    goto :goto_0

    .line 1635
    :cond_1
    iget v0, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v0, :cond_2

    .line 1636
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    goto :goto_0

    .line 1638
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher4/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V

    goto :goto_0
.end method

.method public syncPages()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1571
    sget-boolean v4, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    if-eqz v4, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->disablePagedViewAnimations()V

    .line 1574
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->removeAllViews()V

    .line 1575
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1577
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1579
    .local v0, "context":Landroid/content/Context;
    sget-boolean v4, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    if-eqz v4, :cond_5

    .line 1580
    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    sget-object v5, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne v4, v5, :cond_3

    .line 1581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    if-lt v1, v4, :cond_2

    .line 1622
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->enablePagedViewAnimations()V

    .line 1623
    return-void

    .line 1582
    .restart local v1    # "i":I
    :cond_2
    new-instance v3, Lcom/android/launcher4/AppsCustomizeCellLayout;

    invoke-direct {v3, v0}, Lcom/android/launcher4/AppsCustomizeCellLayout;-><init>(Landroid/content/Context;)V

    .line 1584
    .local v3, "layout":Lcom/android/launcher4/AppsCustomizeCellLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher4/AppsCustomizePagedView;->setupPage(Lcom/android/launcher4/AppsCustomizeCellLayout;)V

    .line 1585
    new-instance v4, Lcom/android/launcher4/PagedView$LayoutParams;

    .line 1587
    invoke-direct {v4, v6, v6}, Lcom/android/launcher4/PagedView$LayoutParams;-><init>(II)V

    .line 1585
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher4/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1581
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1589
    .end local v1    # "i":I
    .end local v3    # "layout":Lcom/android/launcher4/AppsCustomizeCellLayout;
    :cond_3
    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentType:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    sget-object v5, Lcom/android/launcher4/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher4/AppsCustomizePagedView$ContentType;

    if-ne v4, v5, :cond_4

    .line 1590
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumWidgetPages:I

    if-ge v2, v4, :cond_1

    .line 1591
    new-instance v3, Lcom/android/launcher4/PagedViewGridLayout;

    .line 1592
    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    iget v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    .line 1591
    invoke-direct {v3, v0, v4, v5}, Lcom/android/launcher4/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1593
    .local v3, "layout":Lcom/android/launcher4/PagedViewGridLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher4/AppsCustomizePagedView;->setupPage(Lcom/android/launcher4/PagedViewGridLayout;)V

    .line 1594
    new-instance v4, Lcom/android/launcher4/PagedView$LayoutParams;

    .line 1596
    invoke-direct {v4, v6, v6}, Lcom/android/launcher4/PagedView$LayoutParams;-><init>(II)V

    .line 1594
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher4/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1590
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1599
    .end local v2    # "j":I
    .end local v3    # "layout":Lcom/android/launcher4/PagedViewGridLayout;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid ContentType"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1602
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumWidgetPages:I

    if-lt v2, v4, :cond_6

    .line 1610
    sget-boolean v4, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v4, :cond_1

    .line 1611
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v4, :cond_1

    .line 1612
    new-instance v3, Lcom/android/launcher4/AppsCustomizeCellLayout;

    invoke-direct {v3, v0}, Lcom/android/launcher4/AppsCustomizeCellLayout;-><init>(Landroid/content/Context;)V

    .line 1614
    .local v3, "layout":Lcom/android/launcher4/AppsCustomizeCellLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher4/AppsCustomizePagedView;->setupPage(Lcom/android/launcher4/AppsCustomizeCellLayout;)V

    .line 1615
    new-instance v4, Lcom/android/launcher4/PagedView$LayoutParams;

    .line 1617
    invoke-direct {v4, v6, v6}, Lcom/android/launcher4/PagedView$LayoutParams;-><init>(II)V

    .line 1615
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher4/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1611
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1603
    .end local v1    # "i":I
    .end local v3    # "layout":Lcom/android/launcher4/AppsCustomizeCellLayout;
    :cond_6
    new-instance v3, Lcom/android/launcher4/PagedViewGridLayout;

    .line 1604
    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    iget v5, p0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    .line 1603
    invoke-direct {v3, v0, v4, v5}, Lcom/android/launcher4/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1605
    .local v3, "layout":Lcom/android/launcher4/PagedViewGridLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher4/AppsCustomizePagedView;->setupPage(Lcom/android/launcher4/PagedViewGridLayout;)V

    .line 1606
    new-instance v4, Lcom/android/launcher4/PagedView$LayoutParams;

    .line 1607
    invoke-direct {v4, v6, v6}, Lcom/android/launcher4/PagedView$LayoutParams;-><init>(II)V

    .line 1606
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher4/AppsCustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1602
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public syncWidgetPageItems(IZ)V
    .locals 24
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 1381
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v19, v2, v3

    .line 1384
    .local v19, "numItemsPerPage":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1385
    .local v9, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentWidth:I

    .line 1386
    .local v11, "contentWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mPageLayoutPaddingLeft:I

    sub-int v2, v11, v2

    .line 1387
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mPageLayoutPaddingRight:I

    .line 1386
    sub-int/2addr v2, v3

    .line 1387
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetWidthGap:I

    mul-int/2addr v3, v7

    .line 1386
    sub-int/2addr v2, v3

    .line 1387
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    .line 1386
    div-int v4, v2, v3

    .line 1388
    .local v4, "cellWidth":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mContentHeight:I

    .line 1389
    .local v10, "contentHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mPageLayoutPaddingTop:I

    sub-int v2, v10, v2

    .line 1390
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mPageLayoutPaddingBottom:I

    .line 1389
    sub-int/2addr v2, v3

    .line 1390
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetHeightGap:I

    mul-int/2addr v3, v7

    .line 1389
    sub-int/2addr v2, v3

    .line 1390
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountY:I

    .line 1389
    div-int v5, v2, v3

    .line 1392
    .local v5, "cellHeight":I
    const-string v2, "lxx"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, " mNumAppsPages = "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1393
    const-string v7, " mNumWidgetPages = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumWidgetPages:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1394
    const-string v7, " LauncherAppState.appsWidgetsDetach = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1395
    sget-boolean v7, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1392
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    sget-boolean v2, Lcom/android/launcher4/LauncherAppState;->appsWidgetsDetach:Z

    if-eqz v2, :cond_0

    .line 1398
    mul-int v20, p1, v19

    .line 1399
    .local v20, "offset":I
    :goto_0
    move/from16 v13, v20

    .local v13, "i":I
    :goto_1
    add-int v2, v20, v19

    .line 1400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1399
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lt v13, v2, :cond_1

    .line 1406
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher4/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher4/PagedViewGridLayout;

    .line 1407
    .local v6, "layout":Lcom/android/launcher4/PagedViewGridLayout;
    invoke-virtual {v6}, Lcom/android/launcher4/PagedViewGridLayout;->getCellCountX()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/launcher4/PagedViewGridLayout;->setColumnCount(I)V

    .line 1408
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "mWidgets size == "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 1409
    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v13, v2, :cond_2

    .line 1472
    new-instance v2, Lcom/android/launcher4/AppsCustomizePagedView$7;

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher4/AppsCustomizePagedView$7;-><init>(Lcom/android/launcher4/AppsCustomizePagedView;IILcom/android/launcher4/PagedViewGridLayout;ZILjava/util/ArrayList;)V

    invoke-virtual {v6, v2}, Lcom/android/launcher4/PagedViewGridLayout;->setOnLayoutListener(Ljava/lang/Runnable;)V

    .line 1504
    return-void

    .line 1398
    .end local v6    # "layout":Lcom/android/launcher4/PagedViewGridLayout;
    .end local v13    # "i":I
    .end local v20    # "offset":I
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v2, p1, v2

    mul-int v20, v2, v19

    goto :goto_0

    .line 1401
    .restart local v13    # "i":I
    .restart local v20    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1410
    .restart local v6    # "layout":Lcom/android/launcher4/PagedViewGridLayout;
    :cond_2
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 1411
    .local v21, "rawInfo":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1412
    .local v12, "createItemInfo":Lcom/android/launcher4/PendingAddItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1413
    const v3, 0x7f04000d

    const/4 v7, 0x0

    .line 1412
    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/launcher4/PagedViewWidget;

    .line 1414
    .local v23, "widget":Lcom/android/launcher4/PagedViewWidget;
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_6

    move-object/from16 v14, v21

    .line 1416
    check-cast v14, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1417
    .local v14, "info":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v12, Lcom/android/launcher4/PendingAddWidgetInfo;

    .end local v12    # "createItemInfo":Lcom/android/launcher4/PendingAddItemInfo;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v14, v2, v3}, Lcom/android/launcher4/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1420
    .restart local v12    # "createItemInfo":Lcom/android/launcher4/PendingAddItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v2, v14}, Lcom/android/launcher4/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v22

    .line 1421
    .local v22, "spanXY":[I
    const/4 v2, 0x0

    aget v2, v22, v2

    iput v2, v12, Lcom/android/launcher4/PendingAddItemInfo;->spanX:I

    .line 1422
    const/4 v2, 0x1

    aget v2, v22, v2

    iput v2, v12, Lcom/android/launcher4/PendingAddItemInfo;->spanY:I

    .line 1423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v2, v14}, Lcom/android/launcher4/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v18

    .line 1424
    .local v18, "minSpanXY":[I
    const/4 v2, 0x0

    aget v2, v18, v2

    iput v2, v12, Lcom/android/launcher4/PendingAddItemInfo;->minSpanX:I

    .line 1425
    const/4 v2, 0x1

    aget v2, v18, v2

    iput v2, v12, Lcom/android/launcher4/PendingAddItemInfo;->minSpanY:I

    .line 1427
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v2

    .line 1428
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "AppWidgetProviderInfo  "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\n spanX == "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1429
    const/4 v7, 0x0

    aget v7, v22, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "  spanY = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x1

    aget v7, v22, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1428
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1427
    invoke-virtual {v2, v3}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 1431
    const/4 v2, -0x1

    .line 1432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    .line 1431
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v2, v1, v3}, Lcom/android/launcher4/PagedViewWidget;->applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[ILcom/android/launcher4/WidgetPreviewLoader;)V

    .line 1433
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/launcher4/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1434
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher4/PagedViewWidget;->setShortPressListener(Lcom/android/launcher4/PagedViewWidget$ShortPressListener;)V

    .line 1446
    .end local v14    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18    # "minSpanXY":[I
    .end local v22    # "spanXY":[I
    :cond_3
    :goto_3
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher4/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1447
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher4/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1448
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher4/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1449
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher4/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1452
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    rem-int v15, v13, v2

    .line 1453
    .local v15, "ix":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCountX:I

    div-int v16, v13, v2

    .line 1454
    .local v16, "iy":I
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    .line 1455
    sget-object v2, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v16

    invoke-static {v0, v2}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    .line 1456
    sget-object v3, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    .line 1455
    invoke-static {v15, v3}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    .line 1454
    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 1457
    .local v17, "lp":Landroid/widget/GridLayout$LayoutParams;
    move-object/from16 v0, v17

    iput v4, v0, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 1458
    move-object/from16 v0, v17

    iput v5, v0, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 1459
    const v2, 0x800033

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 1460
    if-lez v15, :cond_4

    .line 1461
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetWidthGap:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 1462
    :cond_4
    if-lez v16, :cond_5

    .line 1463
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetHeightGap:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 1464
    :cond_5
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher4/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1465
    invoke-static {}, Lcom/syu/util/JLog;->getInstance()Lcom/syu/util/JLog;

    move-result-object v2

    const-string v3, "ResolveInfo "

    invoke-virtual {v2, v3}, Lcom/syu/util/JLog;->e(Ljava/lang/String;)V

    .line 1409
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1435
    .end local v15    # "ix":I
    .end local v16    # "iy":I
    .end local v17    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_6
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_3

    move-object/from16 v14, v21

    .line 1437
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1438
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    new-instance v12, Lcom/android/launcher4/PendingAddShortcutInfo;

    .end local v12    # "createItemInfo":Lcom/android/launcher4/PendingAddItemInfo;
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v12, v2}, Lcom/android/launcher4/PendingAddShortcutInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 1439
    .restart local v12    # "createItemInfo":Lcom/android/launcher4/PendingAddItemInfo;
    const/4 v2, 0x1

    iput v2, v12, Lcom/android/launcher4/PendingAddItemInfo;->itemType:I

    .line 1440
    new-instance v2, Landroid/content/ComponentName;

    .line 1441
    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    iput-object v2, v12, Lcom/android/launcher4/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    .line 1442
    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v14, v3}, Lcom/android/launcher4/PagedViewWidget;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher4/WidgetPreviewLoader;)V

    .line 1444
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/android/launcher4/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 1914
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/AppInfo;>;"
    sget-boolean v0, Lcom/android/launcher4/AppsCustomizePagedView;->DISABLE_ALL_APPS:Z

    if-nez v0, :cond_0

    .line 1915
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1916
    invoke-direct {p0, p1}, Lcom/android/launcher4/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 1917
    invoke-direct {p0}, Lcom/android/launcher4/AppsCustomizePagedView;->updatePageCountsAndInvalidateData()V

    .line 1919
    :cond_0
    return-void
.end method
