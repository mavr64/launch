.class public Lcom/android/launcher4/FolderIcon$FolderRingAnimator;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderRingAnimator"
.end annotation


# static fields
.field public static sPreviewPadding:I

.field public static sPreviewSize:I

.field public static sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

.field public static sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAcceptAnimator:Landroid/animation/ValueAnimator;

.field private mCellLayout:Lcom/android/launcher4/CellLayout;

.field public mCellX:I

.field public mCellY:I

.field public mFolderIcon:Lcom/android/launcher4/FolderIcon;

.field public mInnerRingSize:F

.field private mNeutralAnimator:Landroid/animation/ValueAnimator;

.field public mOuterRingSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 183
    sput-object v1, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 184
    sput-object v1, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    sput v0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 186
    sput v0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher4/Launcher;Lcom/android/launcher4/FolderIcon;)V
    .locals 6
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p2, "folderIcon"    # Lcom/android/launcher4/FolderIcon;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    .line 192
    iput-object p2, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    .line 193
    invoke-virtual {p1}, Lcom/android/launcher4/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 197
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher4/FolderIcon;->access$0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 199
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FolderRingAnimator loading drawables on non-UI thread "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    :cond_0
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 204
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 205
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    iget v3, v1, Lcom/android/launcher4/DeviceProfile;->folderIconSizePx:I

    sput v3, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 206
    const v3, 0x7f0d0027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 207
    const v3, 0x7f02065d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sput-object v3, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    const v3, 0x7f02065c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sput-object v3, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 209
    const v3, 0x7f02065e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sput-object v3, Lcom/android/launcher4/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 210
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher4/FolderIcon;->access$1(Z)V

    .line 212
    .end local v0    # "app":Lcom/android/launcher4/LauncherAppState;
    .end local v1    # "grid":Lcom/android/launcher4/DeviceProfile;
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)Lcom/android/launcher4/CellLayout;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher4/CellLayout;

    return-object v0
.end method


# virtual methods
.method public animateToAcceptState()V
    .locals 4

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher4/CellLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    .line 219
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 221
    sget v0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 222
    .local v0, "previewSize":I
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$1;-><init>(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$2;

    invoke-direct {v2, p0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$2;-><init>(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 240
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 241
    return-void

    .line 218
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateToNaturalState()V
    .locals 4

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mAcceptAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher4/CellLayout;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/android/launcher4/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    .line 248
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 250
    sget v0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    .line 251
    .local v0, "previewSize":I
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$3;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$3;-><init>(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 261
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$4;

    invoke-direct {v2, p0}, Lcom/android/launcher4/FolderIcon$FolderRingAnimator$4;-><init>(Lcom/android/launcher4/FolderIcon$FolderRingAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 272
    iget-object v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mNeutralAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 273
    return-void

    .line 247
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getCell([I)V
    .locals 2
    .param p1, "loc"    # [I

    .prologue
    .line 277
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellX:I

    aput v1, p1, v0

    .line 278
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellY:I

    aput v1, p1, v0

    .line 279
    return-void
.end method

.method public getInnerRingSize()F
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    return v0
.end method

.method public getOuterRingSize()F
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    return v0
.end method

.method public setCell(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellX:I

    .line 284
    iput p2, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellY:I

    .line 285
    return-void
.end method

.method public setCellLayout(Lcom/android/launcher4/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher4/CellLayout;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/launcher4/FolderIcon$FolderRingAnimator;->mCellLayout:Lcom/android/launcher4/CellLayout;

    .line 289
    return-void
.end method
