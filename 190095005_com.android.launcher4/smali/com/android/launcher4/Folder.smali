.class public Lcom/android/launcher4/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher4/DragSource;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher4/DropTarget;
.implements Lcom/android/launcher4/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/Folder$GridComparator;
    }
.end annotation


# static fields
.field private static final ON_EXIT_CLOSE_DELAY:I = 0x320

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final REORDER_DELAY:I = 0xfa

.field static final STATE_ANIMATING:I = 0x1

.field static final STATE_NONE:I = -0x1

.field static final STATE_OPEN:I = 0x2

.field static final STATE_SMALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static sDefaultFolderName:Ljava/lang/String;

.field private static sHintText:Ljava/lang/String;


# instance fields
.field private DRAG_MODE_NONE:I

.field private DRAG_MODE_REORDER:I

.field private mActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mAutoScrollHelper:Landroid/support/v4/widget/AutoScrollHelper;

.field protected mContent:Lcom/android/launcher4/CellLayout;

.field private mCurrentDragInfo:Lcom/android/launcher4/ShortcutInfo;

.field private mCurrentDragView:Landroid/view/View;

.field private mDeferDropAfterUninstall:Z

.field private mDeferredAction:Ljava/lang/Runnable;

.field private mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z

.field protected mDragController:Lcom/android/launcher4/DragController;

.field private mDragInProgress:Z

.field private mDragMode:I

.field private mEmptyCell:[I

.field private mExpandDuration:I

.field private mFolderIcon:Lcom/android/launcher4/FolderIcon;

.field private mFolderIconPivotX:F

.field private mFolderIconPivotY:F

.field mFolderName:Lcom/android/launcher4/FolderEditText;

.field private mFolderNameHeight:I

.field private final mIconCache:Lcom/android/launcher4/IconCache;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInfo:Lcom/android/launcher4/FolderInfo;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsEditingName:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field private mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field protected mLauncher:Lcom/android/launcher4/Launcher;

.field private mMaxCountX:I

.field private mMaxCountY:I

.field private mMaxNumItems:I

.field private mOnExitAlarm:Lcom/android/launcher4/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher4/OnAlarmListener;

.field private mPreviousTargetCell:[I

.field private mRearrangeOnClose:Z

.field private mReorderAlarm:Lcom/android/launcher4/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher4/OnAlarmListener;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mState:I

.field private mSuppressFolderDeletion:Z

.field mSuppressOnAdd:Z

.field private mTargetCell:[I

.field private mTempRect:Landroid/graphics/Rect;

.field private mUninstallSuccessful:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher4/Folder;->mState:I

    .line 87
    iput-boolean v4, p0, Lcom/android/launcher4/Folder;->mRearrangeOnClose:Z

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 94
    iput-boolean v4, p0, Lcom/android/launcher4/Folder;->mItemsInvalidated:Z

    .line 97
    iput-boolean v4, p0, Lcom/android/launcher4/Folder;->mSuppressOnAdd:Z

    .line 98
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mTargetCell:[I

    .line 99
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mPreviousTargetCell:[I

    .line 100
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mEmptyCell:[I

    .line 101
    new-instance v3, Lcom/android/launcher4/Alarm;

    invoke-direct {v3}, Lcom/android/launcher4/Alarm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    .line 102
    new-instance v3, Lcom/android/launcher4/Alarm;

    invoke-direct {v3}, Lcom/android/launcher4/Alarm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mOnExitAlarm:Lcom/android/launcher4/Alarm;

    .line 104
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mTempRect:Landroid/graphics/Rect;

    .line 105
    iput-boolean v4, p0, Lcom/android/launcher4/Folder;->mDragInProgress:Z

    .line 106
    iput-boolean v4, p0, Lcom/android/launcher4/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 107
    iput-boolean v4, p0, Lcom/android/launcher4/Folder;->mSuppressFolderDeletion:Z

    .line 108
    iput-boolean v4, p0, Lcom/android/launcher4/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 113
    iput-boolean v4, p0, Lcom/android/launcher4/Folder;->mIsEditingName:Z

    .line 119
    iput v4, p0, Lcom/android/launcher4/Folder;->DRAG_MODE_NONE:I

    .line 120
    iput v6, p0, Lcom/android/launcher4/Folder;->DRAG_MODE_REORDER:I

    .line 121
    iget v3, p0, Lcom/android/launcher4/Folder;->DRAG_MODE_NONE:I

    iput v3, p0, Lcom/android/launcher4/Folder;->mDragMode:I

    .line 201
    new-instance v3, Lcom/android/launcher4/Folder$1;

    invoke-direct {v3, p0}, Lcom/android/launcher4/Folder$1;-><init>(Lcom/android/launcher4/Folder;)V

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    .line 571
    new-instance v3, Lcom/android/launcher4/Folder$2;

    invoke-direct {v3, p0}, Lcom/android/launcher4/Folder$2;-><init>(Lcom/android/launcher4/Folder;)V

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mReorderAlarmListener:Lcom/android/launcher4/OnAlarmListener;

    .line 699
    new-instance v3, Lcom/android/launcher4/Folder$3;

    invoke-direct {v3, p0}, Lcom/android/launcher4/Folder$3;-><init>(Lcom/android/launcher4/Folder;)V

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mOnExitAlarmListener:Lcom/android/launcher4/OnAlarmListener;

    .line 140
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 141
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 142
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    invoke-virtual {p0, v4}, Lcom/android/launcher4/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 143
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mInflater:Landroid/view/LayoutInflater;

    .line 144
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getIconCache()Lcom/android/launcher4/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mIconCache:Lcom/android/launcher4/IconCache;

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 147
    .local v2, "res":Landroid/content/res/Resources;
    iget v3, v1, Lcom/android/launcher4/DeviceProfile;->numColumns:F

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher4/Folder;->mMaxCountX:I

    .line 148
    iget v3, v1, Lcom/android/launcher4/DeviceProfile;->numRows:F

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher4/Folder;->mMaxCountY:I

    .line 149
    iget v3, p0, Lcom/android/launcher4/Folder;->mMaxCountX:I

    iget v4, p0, Lcom/android/launcher4/Folder;->mMaxCountY:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/launcher4/Folder;->mMaxNumItems:I

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 151
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 154
    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/Folder;->mExpandDuration:I

    .line 156
    sget-object v3, Lcom/android/launcher4/Folder;->sDefaultFolderName:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 157
    const v3, 0x7f0c0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/launcher4/Folder;->sDefaultFolderName:Ljava/lang/String;

    .line 159
    :cond_0
    sget-object v3, Lcom/android/launcher4/Folder;->sHintText:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 160
    const v3, 0x7f0c0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/launcher4/Folder;->sHintText:Ljava/lang/String;

    .line 162
    :cond_1
    check-cast p1, Lcom/android/launcher4/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 166
    invoke-virtual {p0, v6}, Lcom/android/launcher4/Folder;->setFocusableInTouchMode(Z)V

    .line 167
    return-void
.end method

.method static synthetic access$0(Lcom/android/launcher4/Folder;)[I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mEmptyCell:[I

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/launcher4/Folder;)[I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/launcher4/Folder;[I[I)V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/Folder;->realTimeReorder([I[I)V

    return-void
.end method

.method static synthetic access$3(Lcom/android/launcher4/Folder;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/android/launcher4/Folder;I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/android/launcher4/Folder;->mState:I

    return-void
.end method

.method static synthetic access$5(Lcom/android/launcher4/Folder;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->setFocusOnFirstChild()V

    return-void
.end method

.method static synthetic access$6(Lcom/android/launcher4/Folder;)V
    .locals 0

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->onCloseComplete()V

    return-void
.end method

.method static synthetic access$7(Lcom/android/launcher4/Folder;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/launcher4/Folder;->mDeferredAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$8(Lcom/android/launcher4/Folder;)Lcom/android/launcher4/FolderIcon;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    return-object v0
.end method

.method private arrangeChildren(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 989
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 990
    .local v12, "vacant":[I
    if-nez p1, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object p1

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->removeAllViews()V

    .line 995
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_1

    .line 1011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Folder;->mItemsInvalidated:Z

    .line 1012
    return-void

    .line 996
    :cond_1
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 997
    .local v11, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v12, v2, v3}, Lcom/android/launcher4/CellLayout;->getVacantCell([III)Z

    .line 998
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 999
    .local v10, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    const/4 v0, 0x0

    aget v0, v12, v0

    iput v0, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    .line 1000
    const/4 v0, 0x1

    aget v0, v12, v0

    iput v0, v10, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    .line 1001
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ItemInfo;

    .line 1002
    .local v1, "info":Lcom/android/launcher4/ItemInfo;
    iget v0, v1, Lcom/android/launcher4/ItemInfo;->cellX:I

    const/4 v2, 0x0

    aget v2, v12, v2

    if-ne v0, v2, :cond_2

    iget v0, v1, Lcom/android/launcher4/ItemInfo;->cellY:I

    const/4 v2, 0x1

    aget v2, v12, v2

    if-eq v0, v2, :cond_3

    .line 1003
    :cond_2
    const/4 v0, 0x0

    aget v0, v12, v0

    iput v0, v1, Lcom/android/launcher4/ItemInfo;->cellX:I

    .line 1004
    const/4 v0, 0x1

    aget v0, v12, v0

    iput v0, v1, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 1005
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher4/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    .line 1006
    iget v6, v1, Lcom/android/launcher4/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 1005
    invoke-static/range {v0 .. v7}, Lcom/android/launcher4/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJII)V

    .line 1008
    :cond_3
    const/4 v9, 0x0

    .line 1009
    .local v9, "insert":Z
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    if-eqz v9, :cond_4

    const/4 v4, 0x0

    :goto_1
    iget-wide v6, v1, Lcom/android/launcher4/ItemInfo;->id:J

    long-to-int v5, v6

    const/4 v7, 0x1

    move-object v3, v11

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher4/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/CellLayout$LayoutParams;Z)Z

    .line 995
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1009
    :cond_4
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private centerAboutIcon()V
    .locals 25

    .prologue
    .line 877
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher4/DragLayer$LayoutParams;

    .line 879
    .local v17, "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    const v23, 0x7f110069

    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher4/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher4/DragLayer;

    .line 880
    .local v18, "parent":Lcom/android/launcher4/DragLayer;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Folder;->getPaddingLeft()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Folder;->getPaddingRight()I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher4/CellLayout;->getDesiredWidth()I

    move-result v23

    add-int v21, v22, v23

    .line 881
    .local v21, "width":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher4/Folder;->getFolderHeight()I

    move-result v15

    .line 883
    .local v15, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v19

    .line 885
    .local v19, "scale":F
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v3

    .line 886
    .local v3, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v3}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v14

    .line 888
    .local v14, "grid":Lcom/android/launcher4/DeviceProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v19

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v6, v0

    .line 889
    .local v6, "centerX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v19

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v7, v0

    .line 890
    .local v7, "centerY":I
    div-int/lit8 v22, v21, 0x2

    sub-int v8, v6, v22

    .line 891
    .local v8, "centeredLeft":I
    div-int/lit8 v22, v15, 0x2

    sub-int v9, v7, v22

    .line 892
    .local v9, "centeredTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/Workspace;->getNextPage()I

    move-result v11

    .line 895
    .local v11, "currentPage":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/launcher4/Workspace;->setFinalScrollForPageChange(I)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/launcher4/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher4/CellLayout;

    .line 898
    .local v10, "currentLayout":Lcom/android/launcher4/CellLayout;
    invoke-virtual {v10}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 899
    .local v4, "boundingLayout":Lcom/android/launcher4/ShortcutAndWidgetContainer;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 900
    .local v5, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher4/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/launcher4/Workspace;->resetFinalScrollForPageChange(I)V

    .line 905
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 906
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v24

    add-int v23, v23, v24

    sub-int v23, v23, v21

    .line 905
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 907
    .local v16, "left":I
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 908
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v23, v23, v24

    sub-int v23, v23, v15

    .line 907
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 909
    .local v20, "top":I
    invoke-virtual {v14}, Lcom/android/launcher4/DeviceProfile;->isPhone()Z

    move-result v22

    if-eqz v22, :cond_2

    iget v0, v14, Lcom/android/launcher4/DeviceProfile;->availableWidthPx:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    iget v0, v14, Lcom/android/launcher4/DeviceProfile;->iconSizePx:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 911
    iget v0, v14, Lcom/android/launcher4/DeviceProfile;->availableWidthPx:I

    move/from16 v22, v0

    sub-int v22, v22, v21

    div-int/lit8 v16, v22, 0x2

    .line 916
    :cond_0
    :goto_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    if-lt v15, v0, :cond_1

    .line 917
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v23

    sub-int v23, v23, v15

    div-int/lit8 v23, v23, 0x2

    add-int v20, v22, v23

    .line 920
    :cond_1
    div-int/lit8 v22, v21, 0x2

    sub-int v23, v8, v16

    add-int v12, v22, v23

    .line 921
    .local v12, "folderPivotX":I
    div-int/lit8 v22, v15, 0x2

    sub-int v23, v9, v20

    add-int v13, v22, v23

    .line 922
    .local v13, "folderPivotY":I
    int-to-float v0, v12

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Folder;->setPivotX(F)V

    .line 923
    int-to-float v0, v13

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Folder;->setPivotY(F)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/FolderIcon;->getMeasuredWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 925
    const/high16 v23, 0x3f800000    # 1.0f

    int-to-float v0, v12

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 924
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/Folder;->mFolderIconPivotX:F

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher4/Folder;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher4/FolderIcon;->getMeasuredHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 927
    const/high16 v23, 0x3f800000    # 1.0f

    int-to-float v0, v13

    move/from16 v24, v0

    mul-float v23, v23, v24

    int-to-float v0, v15

    move/from16 v24, v0

    div-float v23, v23, v24

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 926
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher4/Folder;->mFolderIconPivotY:F

    .line 929
    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->width:I

    .line 930
    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/launcher4/DragLayer$LayoutParams;->height:I

    .line 931
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->x:I

    .line 932
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->y:I

    .line 933
    return-void

    .line 912
    .end local v12    # "folderPivotX":I
    .end local v13    # "folderPivotY":I
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    .line 914
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v23

    sub-int v23, v23, v21

    div-int/lit8 v23, v23, 0x2

    add-int v16, v22, v23

    goto/16 :goto_0
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher4/Folder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/Folder;

    return-object v0
.end method

.method private getContentAreaHeight()I
    .locals 6

    .prologue
    .line 955
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 956
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 957
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    iget-boolean v4, v1, Lcom/android/launcher4/DeviceProfile;->isLandscape:Z

    if-eqz v4, :cond_0

    .line 958
    const/4 v4, 0x0

    .line 957
    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/launcher4/DeviceProfile;->getWorkspacePadding(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 959
    .local v3, "workspacePadding":Landroid/graphics/Rect;
    iget v4, v1, Lcom/android/launcher4/DeviceProfile;->availableHeightPx:I

    .line 960
    iget v5, v1, Lcom/android/launcher4/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v5, v5, 0x4

    .line 959
    sub-int/2addr v4, v5

    .line 961
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 959
    sub-int/2addr v4, v5

    .line 961
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 959
    sub-int/2addr v4, v5

    .line 962
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getPaddingTop()I

    move-result v5

    .line 959
    sub-int/2addr v4, v5

    .line 962
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getPaddingBottom()I

    move-result v5

    .line 959
    sub-int/2addr v4, v5

    .line 963
    iget v5, p0, Lcom/android/launcher4/Folder;->mFolderNameHeight:I

    .line 959
    sub-int v2, v4, v5

    .line 965
    .local v2, "maxContentAreaHeight":I
    iget-object v4, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher4/CellLayout;->getDesiredHeight()I

    move-result v4

    .line 964
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4

    .line 958
    .end local v2    # "maxContentAreaHeight":I
    .end local v3    # "workspacePadding":Landroid/graphics/Rect;
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private getDragViewVisualCenter(IIIILcom/android/launcher4/DragView;[F)[F
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I
    .param p5, "dragView"    # Lcom/android/launcher4/DragView;
    .param p6, "recycle"    # [F

    .prologue
    .line 679
    if-nez p6, :cond_0

    .line 680
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 689
    .local v1, "res":[F
    :goto_0
    sub-int v0, p1, p3

    .line 690
    .local v0, "left":I
    sub-int v2, p2, p4

    .line 693
    .local v2, "top":I
    const/4 v3, 0x0

    invoke-virtual {p5}, Lcom/android/launcher4/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 694
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/android/launcher4/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 696
    return-object v1

    .line 682
    .end local v0    # "left":I
    .end local v1    # "res":[F
    .end local v2    # "top":I
    :cond_0
    move-object v1, p6

    .restart local v1    # "res":[F
    goto :goto_0
.end method

.method private getFolderHeight()I
    .locals 3

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 970
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->getContentAreaHeight()I

    move-result v2

    .line 969
    add-int/2addr v1, v2

    .line 970
    iget v2, p0, Lcom/android/launcher4/Folder;->mFolderNameHeight:I

    .line 969
    add-int v0, v1, v2

    .line 971
    .local v0, "height":I
    return v0
.end method

.method private getViewForInfo(Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 1179
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getCountY()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1187
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 1180
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 1179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1181
    :cond_2
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 1182
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_0

    .line 1180
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private onCloseComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1023
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/DragLayer;

    .line 1024
    .local v0, "parent":Lcom/android/launcher4/DragLayer;
    if-eqz v0, :cond_0

    .line 1025
    invoke-virtual {v0, p0}, Lcom/android/launcher4/DragLayer;->removeView(Landroid/view/View;)V

    .line 1027
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mDragController:Lcom/android/launcher4/DragController;

    invoke-virtual {v1, p0}, Lcom/android/launcher4/DragController;->removeDropTarget(Lcom/android/launcher4/DropTarget;)V

    .line 1028
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->clearFocus()V

    .line 1029
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher4/FolderIcon;->requestFocus()Z

    .line 1031
    iget-boolean v1, p0, Lcom/android/launcher4/Folder;->mRearrangeOnClose:Z

    if-eqz v1, :cond_1

    .line 1032
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher4/Folder;->setupContentForNumItems(I)V

    .line 1033
    iput-boolean v2, p0, Lcom/android/launcher4/Folder;->mRearrangeOnClose:Z

    .line 1035
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v3, :cond_2

    .line 1036
    iget-boolean v1, p0, Lcom/android/launcher4/Folder;->mDragInProgress:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher4/Folder;->mSuppressFolderDeletion:Z

    if-nez v1, :cond_3

    .line 1037
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->replaceFolderWithFinalItem()V

    .line 1042
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher4/Folder;->mSuppressFolderDeletion:Z

    .line 1043
    return-void

    .line 1038
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher4/Folder;->mDragInProgress:Z

    if-eqz v1, :cond_2

    .line 1039
    iput-boolean v3, p0, Lcom/android/launcher4/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0
.end method

.method private placeInReadingOrder(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;"
    const/4 v5, 0x0

    .line 350
    .local v5, "maxX":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 351
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 358
    new-instance v2, Lcom/android/launcher4/Folder$GridComparator;

    add-int/lit8 v8, v5, 0x1

    invoke-direct {v2, p0, v8}, Lcom/android/launcher4/Folder$GridComparator;-><init>(Lcom/android/launcher4/Folder;I)V

    .line 359
    .local v2, "gridComparator":Lcom/android/launcher4/Folder$GridComparator;
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 360
    iget-object v8, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v1

    .line 361
    .local v1, "countX":I
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v0, :cond_2

    .line 368
    return-void

    .line 352
    .end local v1    # "countX":I
    .end local v2    # "gridComparator":Lcom/android/launcher4/Folder$GridComparator;
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/ShortcutInfo;

    .line 353
    .local v4, "item":Lcom/android/launcher4/ShortcutInfo;
    iget v8, v4, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    if-le v8, v5, :cond_1

    .line 354
    iget v5, v4, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    .line 351
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    .end local v4    # "item":Lcom/android/launcher4/ShortcutInfo;
    .restart local v1    # "countX":I
    .restart local v2    # "gridComparator":Lcom/android/launcher4/Folder$GridComparator;
    :cond_2
    rem-int v6, v3, v1

    .line 363
    .local v6, "x":I
    div-int v7, v3, v1

    .line 364
    .local v7, "y":I
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/ShortcutInfo;

    .line 365
    .restart local v4    # "item":Lcom/android/launcher4/ShortcutInfo;
    iput v6, v4, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    .line 366
    iput v7, v4, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    .line 361
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private positionAndSizeAsIcon()V
    .locals 2

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher4/DragLayer;

    if-nez v0, :cond_0

    .line 430
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Folder;->setScaleX(F)V

    .line 427
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Folder;->setScaleY(F)V

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Folder;->setAlpha(F)V

    .line 429
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/Folder;->mState:I

    goto :goto_0
.end method

.method private realTimeReorder([I[I)V
    .locals 19
    .param p1, "empty"    # [I
    .param p2, "target"    # [I

    .prologue
    .line 590
    const/4 v9, 0x0

    .line 591
    .local v9, "delay":I
    const/high16 v12, 0x41f00000    # 30.0f

    .line 592
    .local v12, "delayAmount":F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/Folder;->readingOrderGreaterThan([I[I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 593
    const/4 v4, 0x0

    aget v4, p1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v4, v6, :cond_1

    const/16 v16, 0x1

    .line 594
    .local v16, "wrap":Z
    :goto_0
    if-eqz v16, :cond_2

    const/4 v4, 0x1

    aget v4, p1, v4

    add-int/lit8 v15, v4, 0x1

    .line 595
    .local v15, "startY":I
    :goto_1
    move/from16 v18, v15

    .local v18, "y":I
    :goto_2
    const/4 v4, 0x1

    aget v4, p2, v4

    move/from16 v0, v18

    if-le v0, v4, :cond_3

    .line 627
    :cond_0
    return-void

    .line 593
    .end local v15    # "startY":I
    .end local v16    # "wrap":Z
    .end local v18    # "y":I
    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    .line 594
    .restart local v16    # "wrap":Z
    :cond_2
    const/4 v4, 0x1

    aget v15, p1, v4

    goto :goto_1

    .line 596
    .restart local v15    # "startY":I
    .restart local v18    # "y":I
    :cond_3
    const/4 v4, 0x1

    aget v4, p1, v4

    move/from16 v0, v18

    if-ne v0, v4, :cond_4

    const/4 v4, 0x0

    aget v4, p1, v4

    add-int/lit8 v14, v4, 0x1

    .line 597
    .local v14, "startX":I
    :goto_3
    const/4 v4, 0x1

    aget v4, p2, v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v4

    add-int/lit8 v13, v4, -0x1

    .line 598
    .local v13, "endX":I
    :goto_4
    move/from16 v17, v14

    .local v17, "x":I
    :goto_5
    move/from16 v0, v17

    if-le v0, v13, :cond_6

    .line 595
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 596
    .end local v13    # "endX":I
    .end local v14    # "startX":I
    .end local v17    # "x":I
    :cond_4
    const/4 v14, 0x0

    goto :goto_3

    .line 597
    .restart local v14    # "startX":I
    :cond_5
    const/4 v4, 0x0

    aget v13, p2, v4

    goto :goto_4

    .line 599
    .restart local v13    # "endX":I
    .restart local v17    # "x":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 600
    .local v5, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    const/4 v6, 0x0

    aget v6, p1, v6

    const/4 v7, 0x1

    aget v7, p1, v7

    .line 601
    const/16 v8, 0xe6

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 600
    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher4/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v4

    .line 601
    if-eqz v4, :cond_7

    .line 602
    const/4 v4, 0x0

    aput v17, p1, v4

    .line 603
    const/4 v4, 0x1

    aput v18, p1, v4

    .line 604
    int-to-float v4, v9

    add-float/2addr v4, v12

    float-to-int v9, v4

    .line 605
    float-to-double v6, v12

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v10

    double-to-float v12, v6

    .line 598
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 610
    .end local v5    # "v":Landroid/view/View;
    .end local v13    # "endX":I
    .end local v14    # "startX":I
    .end local v15    # "startY":I
    .end local v16    # "wrap":Z
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_8
    const/4 v4, 0x0

    aget v4, p1, v4

    if-nez v4, :cond_9

    const/16 v16, 0x1

    .line 611
    .restart local v16    # "wrap":Z
    :goto_6
    if-eqz v16, :cond_a

    const/4 v4, 0x1

    aget v4, p1, v4

    add-int/lit8 v15, v4, -0x1

    .line 612
    .restart local v15    # "startY":I
    :goto_7
    move/from16 v18, v15

    .restart local v18    # "y":I
    :goto_8
    const/4 v4, 0x1

    aget v4, p2, v4

    move/from16 v0, v18

    if-lt v0, v4, :cond_0

    .line 613
    const/4 v4, 0x1

    aget v4, p1, v4

    move/from16 v0, v18

    if-ne v0, v4, :cond_b

    const/4 v4, 0x0

    aget v4, p1, v4

    add-int/lit8 v14, v4, -0x1

    .line 614
    .restart local v14    # "startX":I
    :goto_9
    const/4 v4, 0x1

    aget v4, p2, v4

    move/from16 v0, v18

    if-le v0, v4, :cond_c

    const/4 v13, 0x0

    .line 615
    .restart local v13    # "endX":I
    :goto_a
    move/from16 v17, v14

    .restart local v17    # "x":I
    :goto_b
    move/from16 v0, v17

    if-ge v0, v13, :cond_d

    .line 612
    add-int/lit8 v18, v18, -0x1

    goto :goto_8

    .line 610
    .end local v13    # "endX":I
    .end local v14    # "startX":I
    .end local v15    # "startY":I
    .end local v16    # "wrap":Z
    .end local v17    # "x":I
    .end local v18    # "y":I
    :cond_9
    const/16 v16, 0x0

    goto :goto_6

    .line 611
    .restart local v16    # "wrap":Z
    :cond_a
    const/4 v4, 0x1

    aget v15, p1, v4

    goto :goto_7

    .line 613
    .restart local v15    # "startY":I
    .restart local v18    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v4

    add-int/lit8 v14, v4, -0x1

    goto :goto_9

    .line 614
    .restart local v14    # "startX":I
    :cond_c
    const/4 v4, 0x0

    aget v13, p2, v4

    goto :goto_a

    .line 616
    .restart local v13    # "endX":I
    .restart local v17    # "x":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 617
    .restart local v5    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    const/4 v6, 0x0

    aget v6, p1, v6

    const/4 v7, 0x1

    aget v7, p1, v7

    .line 618
    const/16 v8, 0xe6

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 617
    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher4/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v4

    .line 618
    if-eqz v4, :cond_e

    .line 619
    const/4 v4, 0x0

    aput v17, p1, v4

    .line 620
    const/4 v4, 0x1

    aput v18, p1, v4

    .line 621
    int-to-float v4, v9

    add-float/2addr v4, v12

    float-to-int v9, v4

    .line 622
    float-to-double v6, v12

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v10

    double-to-float v12, v6

    .line 615
    :cond_e
    add-int/lit8 v17, v17, -0x1

    goto :goto_b
.end method

.method private replaceFolderWithFinalItem()V
    .locals 3

    .prologue
    .line 1047
    new-instance v1, Lcom/android/launcher4/Folder$7;

    invoke-direct {v1, p0}, Lcom/android/launcher4/Folder$7;-><init>(Lcom/android/launcher4/Folder;)V

    .line 1079
    .local v1, "onCompleteRunnable":Ljava/lang/Runnable;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher4/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 1080
    .local v0, "finalChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1081
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher4/FolderIcon;->performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1083
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher4/Folder;->mDestroyed:Z

    .line 1084
    return-void
.end method

.method private sendCustomAccessibilityEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 470
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 472
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 474
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lcom/android/launcher4/Folder;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 475
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 478
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private setFocusOnFirstChild()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 482
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 485
    :cond_0
    return-void
.end method

.method private setupContentDimensions(I)V
    .locals 8
    .param p1, "count"    # I

    .prologue
    const/4 v6, 0x0

    .line 844
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 846
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v7, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v0

    .line 847
    .local v0, "countX":I
    iget-object v7, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher4/CellLayout;->getCountY()I

    move-result v1

    .line 848
    .local v1, "countY":I
    const/4 v2, 0x0

    .line 850
    .local v2, "done":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 868
    iget-object v6, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v6, v0, v1}, Lcom/android/launcher4/CellLayout;->setGridSize(II)V

    .line 869
    invoke-direct {p0, v3}, Lcom/android/launcher4/Folder;->arrangeChildren(Ljava/util/ArrayList;)V

    .line 870
    return-void

    .line 851
    :cond_0
    move v4, v0

    .line 852
    .local v4, "oldCountX":I
    move v5, v1

    .line 853
    .local v5, "oldCountY":I
    mul-int v7, v0, v1

    if-ge v7, p1, :cond_5

    .line 855
    if-le v0, v1, :cond_1

    iget v7, p0, Lcom/android/launcher4/Folder;->mMaxCountY:I

    if-ne v1, v7, :cond_4

    :cond_1
    iget v7, p0, Lcom/android/launcher4/Folder;->mMaxCountX:I

    if-ge v0, v7, :cond_4

    .line 856
    add-int/lit8 v0, v0, 0x1

    .line 860
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 866
    :cond_3
    :goto_2
    if-ne v0, v4, :cond_7

    if-ne v1, v5, :cond_7

    const/4 v2, 0x1

    :goto_3
    goto :goto_0

    .line 857
    :cond_4
    iget v7, p0, Lcom/android/launcher4/Folder;->mMaxCountY:I

    if-ge v1, v7, :cond_2

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 861
    :cond_5
    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v7, v0

    if-lt v7, p1, :cond_6

    if-lt v1, v0, :cond_6

    .line 862
    add-int/lit8 v7, v1, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 863
    goto :goto_2

    :cond_6
    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v7, v1

    if-lt v7, p1, :cond_3

    .line 864
    add-int/lit8 v7, v0, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_7
    move v2, v6

    .line 866
    goto :goto_3
.end method

.method private setupContentForNumItems(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 943
    invoke-direct {p0, p1}, Lcom/android/launcher4/Folder;->setupContentDimensions(I)V

    .line 945
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/DragLayer$LayoutParams;

    .line 946
    .local v0, "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    if-nez v0, :cond_0

    .line 947
    new-instance v0, Lcom/android/launcher4/DragLayer$LayoutParams;

    .end local v0    # "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    invoke-direct {v0, v1, v1}, Lcom/android/launcher4/DragLayer$LayoutParams;-><init>(II)V

    .line 948
    .restart local v0    # "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher4/DragLayer$LayoutParams;->customPosition:Z

    .line 949
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->centerAboutIcon()V

    .line 952
    return-void
.end method

.method private updateItemLocationsInDatabase()V
    .locals 11

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v9

    .line 803
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_0

    .line 809
    return-void

    .line 804
    :cond_0
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 805
    .local v10, "v":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ItemInfo;

    .line 806
    .local v1, "info":Lcom/android/launcher4/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher4/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    .line 807
    iget v6, v1, Lcom/android/launcher4/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher4/ItemInfo;->cellY:I

    .line 806
    invoke-static/range {v0 .. v7}, Lcom/android/launcher4/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJII)V

    .line 803
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private updateItemLocationsInDatabaseBatch()V
    .locals 9

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 813
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ItemInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 820
    iget-object v5, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v6, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v6, v6, Lcom/android/launcher4/FolderInfo;->id:J

    const/4 v8, 0x0

    invoke-static {v5, v2, v6, v7, v8}, Lcom/android/launcher4/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/ArrayList;JI)V

    .line 821
    return-void

    .line 815
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 816
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ItemInfo;

    .line 817
    .local v1, "info":Lcom/android/launcher4/ItemInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateTextViewFocus()V
    .locals 3

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    .line 1094
    .local v0, "lastChild":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher4/Folder;->getItemAt(I)Landroid/view/View;

    .line 1095
    if-eqz v0, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher4/FolderEditText;->setNextFocusDownId(I)V

    .line 1097
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher4/FolderEditText;->setNextFocusRightId(I)V

    .line 1098
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher4/FolderEditText;->setNextFocusLeftId(I)V

    .line 1099
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher4/FolderEditText;->setNextFocusUpId(I)V

    .line 1101
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 4
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    const/4 v2, 0x1

    .line 515
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher4/ItemInfo;

    .line 516
    .local v0, "item":Lcom/android/launcher4/ItemInfo;
    iget v1, v0, Lcom/android/launcher4/ItemInfo;->itemType:I

    .line 517
    .local v1, "itemType":I
    if-eqz v1, :cond_0

    .line 518
    if-ne v1, v2, :cond_1

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->isFull()Z

    move-result v3

    if-nez v3, :cond_1

    .line 517
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addItemLocationsInDatabase()V
    .locals 12

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v10

    .line 825
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v9, v0, :cond_0

    .line 831
    return-void

    .line 826
    :cond_0
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 827
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/ItemInfo;

    .line 828
    .local v1, "info":Lcom/android/launcher4/ItemInfo;
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v2, v2, Lcom/android/launcher4/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    .line 829
    iget v6, v1, Lcom/android/launcher4/ItemInfo;->cellX:I

    iget v7, v1, Lcom/android/launcher4/ItemInfo;->cellY:I

    const/4 v8, 0x0

    .line 828
    invoke-static/range {v0 .. v8}, Lcom/android/launcher4/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJIIZ)V

    .line 825
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public animateClosed()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const v9, 0x3f666666    # 0.9f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher4/DragLayer;

    if-nez v4, :cond_0

    .line 512
    :goto_0
    return-void

    .line 489
    :cond_0
    const-string v4, "alpha"

    new-array v5, v8, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 490
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 491
    .local v2, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v8, [F

    aput v9, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 493
    .local v3, "scaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    aput-object v3, v4, v10

    invoke-static {p0, v4}, Lcom/android/launcher4/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 495
    .local v1, "oa":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/android/launcher4/Folder$5;

    invoke-direct {v4, p0}, Lcom/android/launcher4/Folder$5;-><init>(Lcom/android/launcher4/Folder;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 509
    iget v4, p0, Lcom/android/launcher4/Folder;->mExpandDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 510
    const/4 v4, 0x0

    invoke-virtual {p0, v10, v4}, Lcom/android/launcher4/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 511
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 433
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->positionAndSizeAsIcon()V

    .line 435
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher4/DragLayer;

    if-nez v4, :cond_0

    .line 467
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->centerAboutIcon()V

    .line 437
    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 438
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 439
    .local v2, "scaleX":Landroid/animation/PropertyValuesHolder;
    const-string v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 441
    .local v3, "scaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v9

    invoke-static {p0, v4}, Lcom/android/launcher4/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 443
    .local v1, "oa":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/android/launcher4/Folder$4;

    invoke-direct {v4, p0}, Lcom/android/launcher4/Folder$4;-><init>(Lcom/android/launcher4/Folder;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    iget v4, p0, Lcom/android/launcher4/Folder;->mExpandDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 465
    const/4 v4, 0x0

    invoke-virtual {p0, v9, v4}, Lcom/android/launcher4/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 466
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method bind(Lcom/android/launcher4/FolderInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/android/launcher4/FolderInfo;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    .line 372
    iget-object v1, p1, Lcom/android/launcher4/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 373
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v5, "overflow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher4/Folder;->setupContentForNumItems(I)V

    .line 375
    invoke-direct {p0, v1}, Lcom/android/launcher4/Folder;->placeInReadingOrder(Ljava/util/ArrayList;)V

    .line 376
    const/4 v2, 0x0

    .line 377
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 387
    invoke-direct {p0, v2}, Lcom/android/launcher4/Folder;->setupContentForNumItems(I)V

    .line 392
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 397
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher4/Folder;->mItemsInvalidated:Z

    .line 398
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->updateTextViewFocus()V

    .line 399
    iget-object v6, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    invoke-virtual {v6, p0}, Lcom/android/launcher4/FolderInfo;->addListener(Lcom/android/launcher4/FolderInfo$FolderListener;)V

    .line 401
    sget-object v6, Lcom/android/launcher4/Folder;->sDefaultFolderName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-object v7, v7, Lcom/android/launcher4/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 402
    iget-object v6, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    iget-object v7, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-object v7, v7, Lcom/android/launcher4/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/android/launcher4/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    .line 406
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->updateItemLocationsInDatabase()V

    .line 407
    return-void

    .line 378
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/ShortcutInfo;

    .line 379
    .local v0, "child":Lcom/android/launcher4/ShortcutInfo;
    invoke-virtual {p0, v0}, Lcom/android/launcher4/Folder;->createAndAddShortcut(Lcom/android/launcher4/ShortcutInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 380
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 392
    .end local v0    # "child":Lcom/android/launcher4/ShortcutInfo;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/ShortcutInfo;

    .line 393
    .local v4, "item":Lcom/android/launcher4/ShortcutInfo;
    iget-object v7, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    invoke-virtual {v7, v4}, Lcom/android/launcher4/FolderInfo;->remove(Lcom/android/launcher4/ShortcutInfo;)V

    .line 394
    iget-object v7, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v7, v4}, Lcom/android/launcher4/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    goto :goto_1

    .line 404
    .end local v4    # "item":Lcom/android/launcher4/ShortcutInfo;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/android/launcher4/FolderEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public completeDragExit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 706
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->closeFolder()V

    .line 707
    iput-object v1, p0, Lcom/android/launcher4/Folder;->mCurrentDragInfo:Lcom/android/launcher4/ShortcutInfo;

    .line 708
    iput-object v1, p0, Lcom/android/launcher4/Folder;->mCurrentDragView:Landroid/view/View;

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/Folder;->mSuppressOnAdd:Z

    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Folder;->mRearrangeOnClose:Z

    .line 711
    return-void
.end method

.method protected createAndAddShortcut(Lcom/android/launcher4/ShortcutInfo;)Z
    .locals 10
    .param p1, "item"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040008

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher4/BubbleTextView;

    .line 537
    .local v1, "textView":Lcom/android/launcher4/BubbleTextView;
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mIconCache:Lcom/android/launcher4/IconCache;

    invoke-virtual {p1, v0}, Lcom/android/launcher4/ShortcutInfo;->getIcon(Lcom/android/launcher4/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher4/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 536
    invoke-virtual {v1, v7, v0, v7, v7}, Lcom/android/launcher4/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 538
    iget-object v0, p1, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/android/launcher4/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {v1, p1}, Lcom/android/launcher4/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher4/BubbleTextView;->setTextColor(I)V

    .line 541
    invoke-virtual {v1, v2}, Lcom/android/launcher4/BubbleTextView;->setShadowsEnabled(Z)V

    .line 543
    invoke-virtual {v1, p0}, Lcom/android/launcher4/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    invoke-virtual {v1, p0}, Lcom/android/launcher4/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 548
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    iget v3, p1, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    invoke-virtual {v0, v3, v7}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    if-ltz v0, :cond_0

    .line 549
    iget v0, p1, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget v0, p1, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getCountY()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 551
    :cond_0
    const-string v0, "Launcher.Folder"

    const-string v3, "Folder order not properly persisted during bind"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Folder;->findAndSetEmptyCells(Lcom/android/launcher4/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 562
    :goto_0
    return v2

    .line 558
    :cond_1
    new-instance v4, Lcom/android/launcher4/CellLayout$LayoutParams;

    iget v0, p1, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    iget v7, p1, Lcom/android/launcher4/ShortcutInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher4/ShortcutInfo;->spanY:I

    invoke-direct {v4, v0, v3, v7, v8}, Lcom/android/launcher4/CellLayout$LayoutParams;-><init>(IIII)V

    .line 559
    .local v4, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    const/4 v6, 0x0

    .line 560
    .local v6, "insert":Z
    new-instance v0, Lcom/android/launcher4/FolderKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher4/FolderKeyEventListener;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/launcher4/BubbleTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 561
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    if-eqz v6, :cond_2

    :goto_1
    iget-wide v8, p1, Lcom/android/launcher4/ShortcutInfo;->id:J

    long-to-int v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/CellLayout$LayoutParams;Z)Z

    move v2, v5

    .line 562
    goto :goto_0

    .line 561
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public deferCompleteDropAfterUninstallActivity()V
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Folder;->mDeferDropAfterUninstall:Z

    .line 777
    return-void
.end method

.method public dismissEditingName()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher4/Folder;->doneEditingFolderName(Z)V

    .line 267
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public doneEditingFolderName(Z)V
    .locals 5
    .param p1, "commit"    # Z

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    sget-object v2, Lcom/android/launcher4/Folder;->sHintText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher4/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "newTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher4/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v2, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    invoke-static {v1, v2}, Lcom/android/launcher4/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;)V

    .line 277
    if-eqz p1, :cond_0

    .line 278
    const/16 v1, 0x20

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c005c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-direct {p0, v1, v2}, Lcom/android/launcher4/Folder;->sendCustomAccessibilityEvent(ILjava/lang/String;)V

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->requestFocus()Z

    .line 285
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v1}, Lcom/android/launcher4/FolderEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v4, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 286
    iput-boolean v4, p0, Lcom/android/launcher4/Folder;->mIsEditingName:Z

    .line 287
    return-void
.end method

.method protected findAndSetEmptyCells(Lcom/android/launcher4/ShortcutInfo;)Z
    .locals 6
    .param p1, "item"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 523
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 524
    .local v0, "emptyCell":[I
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    iget v4, p1, Lcom/android/launcher4/ShortcutInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher4/ShortcutInfo;->spanY:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/launcher4/CellLayout;->findCellForSpan([III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 525
    aget v2, v0, v2

    iput v2, p1, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    .line 526
    aget v2, v0, v1

    iput v2, p1, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    .line 529
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getDragDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getEditTextRegion()Landroid/view/View;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1225
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 1226
    return-void
.end method

.method getInfo()Lcom/android/launcher4/FolderInfo;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    return-object v0
.end method

.method public getItemAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemsInReadingOrder()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1198
    iget-boolean v3, p0, Lcom/android/launcher4/Folder;->mItemsInvalidated:Z

    if-eqz v3, :cond_0

    .line 1199
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1200
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getCountY()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 1208
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher4/Folder;->mItemsInvalidated:Z

    .line 1210
    .end local v1    # "j":I
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v3

    .line 1201
    .restart local v1    # "j":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 1200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1202
    :cond_2
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher4/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 1203
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 1204
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .param p1, "loc"    # [I

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher4/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 1215
    return-void
.end method

.method getPivotXForIconAnimation()F
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Lcom/android/launcher4/Folder;->mFolderIconPivotX:F

    return v0
.end method

.method getPivotYForIconAnimation()F
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcom/android/launcher4/Folder;->mFolderIconPivotY:F

    return v0
.end method

.method public hideItem(Lcom/android/launcher4/ShortcutInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 1138
    invoke-direct {p0, p1}, Lcom/android/launcher4/Folder;->getViewForInfo(Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1139
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    return-void
.end method

.method isDestroyed()Z
    .locals 1

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/android/launcher4/Folder;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 840
    const/4 v0, 0x1

    return v0
.end method

.method public isEditingName()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/launcher4/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher4/Folder;->mMaxNumItems:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 630
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDrop()V
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/android/launcher4/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 837
    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher4/ShortcutInfo;)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 1147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Folder;->mItemsInvalidated:Z

    .line 1150
    iget-boolean v0, p0, Lcom/android/launcher4/Folder;->mSuppressOnAdd:Z

    if-eqz v0, :cond_0

    .line 1159
    :goto_0
    return-void

    .line 1151
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Folder;->findAndSetEmptyCells(Lcom/android/launcher4/ShortcutInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1153
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher4/Folder;->setupContentForNumItems(I)V

    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Folder;->findAndSetEmptyCells(Lcom/android/launcher4/ShortcutInfo;)Z

    .line 1156
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher4/Folder;->createAndAddShortcut(Lcom/android/launcher4/ShortcutInfo;)Z

    .line 1158
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-wide v2, v1, Lcom/android/launcher4/FolderInfo;->id:J

    const-wide/16 v4, 0x0

    iget v6, p1, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    move-object v1, p1

    .line 1157
    invoke-static/range {v0 .. v7}, Lcom/android/launcher4/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher4/ItemInfo;JJII)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 220
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher4/Launcher;->onClick(Landroid/view/View;)V

    .line 223
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    const/4 v2, -0x1

    .line 566
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mPreviousTargetCell:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 567
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mPreviousTargetCell:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 568
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mOnExitAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher4/Alarm;->cancelAlarm()V

    .line 569
    return-void
.end method

.method public onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 4
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mAutoScrollHelper:Landroid/support/v4/widget/AutoScrollHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 718
    iget-boolean v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mOnExitAlarm:Lcom/android/launcher4/Alarm;

    iget-object v1, p0, Lcom/android/launcher4/Folder;->mOnExitAlarmListener:Lcom/android/launcher4/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Alarm;->setOnAlarmListener(Lcom/android/launcher4/OnAlarmListener;)V

    .line 720
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mOnExitAlarm:Lcom/android/launcher4/Alarm;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher4/Alarm;->setAlarm(J)V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher4/Alarm;->cancelAlarm()V

    .line 723
    iget v0, p0, Lcom/android/launcher4/Folder;->DRAG_MODE_NONE:I

    iput v0, p0, Lcom/android/launcher4/Folder;->mDragMode:I

    .line 724
    return-void
.end method

.method public onDragOver(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 20
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 634
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    .line 635
    .local v7, "dragView":Lcom/android/launcher4/DragView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v18

    .line 636
    .local v18, "scrollOffset":I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher4/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher4/DropTarget$DragObject;->yOffset:I

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher4/Folder;->getDragViewVisualCenter(IIIILcom/android/launcher4/DragView;[F)[F

    move-result-object v17

    .line 637
    .local v17, "r":[F
    const/4 v2, 0x0

    aget v3, v17, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Folder;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v17, v2

    .line 638
    const/4 v2, 0x1

    aget v3, v17, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Folder;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    aput v3, v17, v2

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 642
    .local v8, "downTime":J
    const/4 v12, 0x2

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->x:I

    int-to-float v13, v2

    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher4/DropTarget$DragObject;->y:I

    int-to-float v14, v2

    const/4 v15, 0x0

    move-wide v10, v8

    .line 641
    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v19

    .line 644
    .local v19, "translatedEv":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mAutoScrollHelper:Landroid/support/v4/widget/AutoScrollHelper;

    invoke-virtual {v2}, Landroid/support/v4/widget/AutoScrollHelper;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mAutoScrollHelper:Landroid/support/v4/widget/AutoScrollHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/AutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 648
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mAutoScrollHelper:Landroid/support/v4/widget/AutoScrollHelper;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v16

    .line 649
    .local v16, "handled":Z
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 651
    if-eqz v16, :cond_1

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher4/Alarm;->cancelAlarm()V

    .line 671
    :goto_0
    return-void

    .line 654
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    .line 655
    const/4 v2, 0x0

    aget v2, v17, v2

    float-to-int v11, v2

    const/4 v2, 0x1

    aget v2, v17, v2

    float-to-int v2, v2

    add-int v12, v2, v18

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher4/Folder;->mTargetCell:[I

    .line 654
    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher4/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher4/Folder;->mTargetCell:[I

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher4/Folder;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher4/CellLayout;->getCountX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher4/Folder;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    aput v4, v2, v3

    .line 659
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Folder;->mPreviousTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_3

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Folder;->mPreviousTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_4

    .line 661
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher4/Alarm;->cancelAlarm()V

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher4/Folder;->mReorderAlarmListener:Lcom/android/launcher4/OnAlarmListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher4/Alarm;->setOnAlarmListener(Lcom/android/launcher4/OnAlarmListener;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mReorderAlarm:Lcom/android/launcher4/Alarm;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher4/Alarm;->setAlarm(J)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mPreviousTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Folder;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    aput v4, v2, v3

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher4/Folder;->mPreviousTargetCell:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher4/Folder;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    aput v4, v2, v3

    .line 666
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/Folder;->DRAG_MODE_REORDER:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/Folder;->mDragMode:I

    goto/16 :goto_0

    .line 668
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher4/Folder;->DRAG_MODE_NONE:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher4/Folder;->mDragMode:I

    goto/16 :goto_0
.end method

.method public onDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 11
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 1105
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher4/AppInfo;

    if-eqz v0, :cond_1

    .line 1107
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher4/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher4/AppInfo;->makeShortcut()Lcom/android/launcher4/ShortcutInfo;

    move-result-object v6

    .line 1108
    .local v6, "item":Lcom/android/launcher4/ShortcutInfo;
    iput v5, v6, Lcom/android/launcher4/ShortcutInfo;->spanX:I

    .line 1109
    iput v5, v6, Lcom/android/launcher4/ShortcutInfo;->spanY:I

    .line 1115
    :goto_0
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mCurrentDragInfo:Lcom/android/launcher4/ShortcutInfo;

    if-ne v6, v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher4/ShortcutInfo;

    .line 1117
    .local v7, "si":Lcom/android/launcher4/ShortcutInfo;
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/CellLayout$LayoutParams;

    .line 1118
    .local v4, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mEmptyCell:[I

    aget v0, v0, v10

    iput v0, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iput v0, v7, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    .line 1119
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mEmptyCell:[I

    aget v0, v0, v5

    iput v0, v4, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iput v0, v7, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    .line 1120
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    iget-object v1, p0, Lcom/android/launcher4/Folder;->mCurrentDragView:Landroid/view/View;

    const/4 v2, -0x1

    iget-wide v8, v6, Lcom/android/launcher4/ShortcutInfo;->id:J

    long-to-int v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher4/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/CellLayout$LayoutParams;Z)Z

    .line 1121
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    invoke-virtual {v0}, Lcom/android/launcher4/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    iget-object v2, p0, Lcom/android/launcher4/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/DragLayer;->animateViewIntoPosition(Lcom/android/launcher4/DragView;Landroid/view/View;)V

    .line 1127
    :goto_1
    iput-boolean v5, p0, Lcom/android/launcher4/Folder;->mItemsInvalidated:Z

    .line 1128
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher4/Folder;->setupContentDimensions(I)V

    .line 1129
    iput-boolean v5, p0, Lcom/android/launcher4/Folder;->mSuppressOnAdd:Z

    .line 1131
    .end local v4    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    .end local v7    # "si":Lcom/android/launcher4/ShortcutInfo;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    invoke-virtual {v0, v6}, Lcom/android/launcher4/FolderInfo;->add(Lcom/android/launcher4/ShortcutInfo;)V

    .line 1132
    return-void

    .line 1111
    .end local v6    # "item":Lcom/android/launcher4/ShortcutInfo;
    :cond_1
    iget-object v6, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher4/ShortcutInfo;

    .restart local v6    # "item":Lcom/android/launcher4/ShortcutInfo;
    goto :goto_0

    .line 1124
    .restart local v4    # "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    .restart local v7    # "si":Lcom/android/launcher4/ShortcutInfo;
    :cond_2
    iput-boolean v10, p1, Lcom/android/launcher4/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1125
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V
    .locals 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher4/DropTarget$DragObject;
    .param p3, "isFlingToDelete"    # Z
    .param p4, "success"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 728
    iget-boolean v2, p0, Lcom/android/launcher4/Folder;->mDeferDropAfterUninstall:Z

    if-eqz v2, :cond_0

    .line 729
    const-string v0, "Launcher.Folder"

    const-string v1, "Deferred handling drop because waiting for uninstall."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v0, Lcom/android/launcher4/Folder$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher4/Folder$6;-><init>(Lcom/android/launcher4/Folder;Landroid/view/View;Lcom/android/launcher4/DropTarget$DragObject;ZZ)V

    iput-object v0, p0, Lcom/android/launcher4/Folder;->mDeferredAction:Ljava/lang/Runnable;

    .line 773
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    move v6, v0

    .line 741
    .local v6, "beingCalledAfterUninstall":Z
    :goto_1
    if-eqz p4, :cond_6

    if-eqz v6, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher4/Folder;->mUninstallSuccessful:Z

    if-eqz v2, :cond_6

    :cond_1
    move v7, v0

    .line 743
    .local v7, "successfulDrop":Z
    :goto_2
    if-eqz v7, :cond_7

    .line 744
    iget-boolean v2, p0, Lcom/android/launcher4/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher4/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez v2, :cond_2

    .line 745
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->replaceFolderWithFinalItem()V

    .line 753
    :cond_2
    :goto_3
    if-eq p1, p0, :cond_4

    .line 754
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mOnExitAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher4/Alarm;->alarmPending()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 755
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mOnExitAlarm:Lcom/android/launcher4/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher4/Alarm;->cancelAlarm()V

    .line 756
    if-nez v7, :cond_3

    .line 757
    iput-boolean v0, p0, Lcom/android/launcher4/Folder;->mSuppressFolderDeletion:Z

    .line 759
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->completeDragExit()V

    .line 763
    :cond_4
    iput-boolean v1, p0, Lcom/android/launcher4/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 764
    iput-boolean v1, p0, Lcom/android/launcher4/Folder;->mDragInProgress:Z

    .line 765
    iput-boolean v1, p0, Lcom/android/launcher4/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 766
    iput-object v3, p0, Lcom/android/launcher4/Folder;->mCurrentDragInfo:Lcom/android/launcher4/ShortcutInfo;

    .line 767
    iput-object v3, p0, Lcom/android/launcher4/Folder;->mCurrentDragView:Landroid/view/View;

    .line 768
    iput-boolean v1, p0, Lcom/android/launcher4/Folder;->mSuppressOnAdd:Z

    .line 772
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->updateItemLocationsInDatabaseBatch()V

    goto :goto_0

    .end local v6    # "beingCalledAfterUninstall":Z
    .end local v7    # "successfulDrop":Z
    :cond_5
    move v6, v1

    .line 739
    goto :goto_1

    .restart local v6    # "beingCalledAfterUninstall":Z
    :cond_6
    move v7, v1

    .line 740
    goto :goto_2

    .line 748
    .restart local v7    # "successfulDrop":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher4/Folder;->setupContentForNumItems(I)V

    .line 750
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    invoke-virtual {v2, p2}, Lcom/android/launcher4/FolderIcon;->onDrop(Lcom/android/launcher4/DropTarget$DragObject;)V

    goto :goto_3
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 290
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->dismissEditingName()V

    .line 292
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 171
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 172
    const v3, 0x7f11008b

    invoke-virtual {p0, v3}, Lcom/android/launcher4/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mScrollView:Landroid/widget/ScrollView;

    .line 173
    const v3, 0x7f11008c

    invoke-virtual {p0, v3}, Lcom/android/launcher4/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/CellLayout;

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    .line 175
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 176
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getDynamicGrid()Lcom/android/launcher4/DynamicGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/DynamicGrid;->getDeviceProfile()Lcom/android/launcher4/DeviceProfile;

    move-result-object v1

    .line 178
    .local v1, "grid":Lcom/android/launcher4/DeviceProfile;
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    iget v4, v1, Lcom/android/launcher4/DeviceProfile;->folderCellWidthPx:I

    iget v5, v1, Lcom/android/launcher4/DeviceProfile;->folderCellHeightPx:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher4/CellLayout;->setCellDimensions(II)V

    .line 179
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3, v6, v6}, Lcom/android/launcher4/CellLayout;->setGridSize(II)V

    .line 180
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher4/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher4/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher4/ShortcutAndWidgetContainer;->setMotionEventSplittingEnabled(Z)V

    .line 181
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v3, v7}, Lcom/android/launcher4/CellLayout;->setInvertIfRtl(Z)V

    .line 182
    const v3, 0x7f110087

    invoke-virtual {p0, v3}, Lcom/android/launcher4/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/FolderEditText;

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    .line 183
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v3, p0}, Lcom/android/launcher4/FolderEditText;->setFolder(Lcom/android/launcher4/Folder;)V

    .line 184
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v3, p0}, Lcom/android/launcher4/FolderEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, "measureSpec":I
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v3, v2, v2}, Lcom/android/launcher4/FolderEditText;->measure(II)V

    .line 190
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v3}, Lcom/android/launcher4/FolderEditText;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher4/Folder;->mFolderNameHeight:I

    .line 193
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    iget-object v4, p0, Lcom/android/launcher4/Folder;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v3, v4}, Lcom/android/launcher4/FolderEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 194
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v3, p0}, Lcom/android/launcher4/FolderEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 195
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v3, v7}, Lcom/android/launcher4/FolderEditText;->setSelectAllOnFocus(Z)V

    .line 196
    iget-object v3, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    iget-object v4, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    invoke-virtual {v4}, Lcom/android/launcher4/FolderEditText;->getInputType()I

    move-result v4

    .line 197
    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    or-int/lit16 v4, v4, 0x2000

    .line 196
    invoke-virtual {v3, v4}, Lcom/android/launcher4/FolderEditText;->setInputType(I)V

    .line 198
    new-instance v3, Lcom/android/launcher4/FolderAutoScrollHelper;

    iget-object v4, p0, Lcom/android/launcher4/Folder;->mScrollView:Landroid/widget/ScrollView;

    invoke-direct {v3, v4}, Lcom/android/launcher4/FolderAutoScrollHelper;-><init>(Landroid/widget/ScrollView;)V

    iput-object v3, p0, Lcom/android/launcher4/Folder;->mAutoScrollHelper:Landroid/support/v4/widget/AutoScrollHelper;

    .line 199
    return-void
.end method

.method public onFlingToDelete(Lcom/android/launcher4/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "vec"    # Landroid/graphics/PointF;

    .prologue
    .line 794
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 799
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->startEditingFolderName()V

    .line 1221
    :cond_0
    return-void
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->updateTextViewFocus()V

    .line 1192
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 227
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->isDraggingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 252
    :goto_0
    return v2

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 230
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/launcher4/ShortcutInfo;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 231
    check-cast v0, Lcom/android/launcher4/ShortcutInfo;

    .line 232
    .local v0, "item":Lcom/android/launcher4/ShortcutInfo;
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    .line 233
    goto :goto_0

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/launcher4/Launcher;->dismissFolderCling(Landroid/view/View;)V

    .line 238
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher4/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 239
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/launcher4/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher4/DragSource;)V

    move-object v2, p1

    .line 240
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/launcher4/Folder;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 242
    iput-object v0, p0, Lcom/android/launcher4/Folder;->mCurrentDragInfo:Lcom/android/launcher4/ShortcutInfo;

    .line 243
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mEmptyCell:[I

    iget v5, v0, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    aput v5, v2, v4

    .line 244
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mEmptyCell:[I

    iget v5, v0, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    aput v5, v2, v3

    .line 245
    iput-object p1, p0, Lcom/android/launcher4/Folder;->mCurrentDragView:Landroid/view/View;

    .line 247
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    iget-object v5, p0, Lcom/android/launcher4/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v2, v5}, Lcom/android/launcher4/CellLayout;->removeView(Landroid/view/View;)V

    .line 248
    iget-object v2, p0, Lcom/android/launcher4/Folder;->mInfo:Lcom/android/launcher4/FolderInfo;

    iget-object v5, p0, Lcom/android/launcher4/Folder;->mCurrentDragInfo:Lcom/android/launcher4/ShortcutInfo;

    invoke-virtual {v2, v5}, Lcom/android/launcher4/FolderInfo;->remove(Lcom/android/launcher4/ShortcutInfo;)V

    .line 249
    iput-boolean v3, p0, Lcom/android/launcher4/Folder;->mDragInProgress:Z

    .line 250
    iput-boolean v4, p0, Lcom/android/launcher4/Folder;->mItemAddedBackToSelfViaIcon:Z

    .end local v0    # "item":Lcom/android/launcher4/ShortcutInfo;
    :cond_2
    move v2, v3

    .line 252
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 975
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher4/CellLayout;->getDesiredWidth()I

    move-result v5

    add-int v3, v4, v5

    .line 976
    .local v3, "width":I
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->getFolderHeight()I

    move-result v2

    .line 977
    .local v2, "height":I
    iget-object v4, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher4/CellLayout;->getDesiredWidth()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 979
    .local v1, "contentAreaWidthSpec":I
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->getContentAreaHeight()I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 981
    .local v0, "contentAreaHeightSpec":I
    iget-object v4, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    iget-object v5, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher4/CellLayout;->getDesiredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher4/CellLayout;->getDesiredHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher4/CellLayout;->setFixedSize(II)V

    .line 982
    iget-object v4, p0, Lcom/android/launcher4/Folder;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v1, v0}, Landroid/widget/ScrollView;->measure(II)V

    .line 983
    iget-object v4, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    .line 984
    iget v5, p0, Lcom/android/launcher4/Folder;->mFolderNameHeight:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 983
    invoke-virtual {v4, v1, v5}, Lcom/android/launcher4/FolderEditText;->measure(II)V

    .line 985
    invoke-virtual {p0, v3, v2}, Lcom/android/launcher4/Folder;->setMeasuredDimension(II)V

    .line 986
    return-void
.end method

.method public onRemove(Lcom/android/launcher4/ShortcutInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    const/4 v2, 0x1

    .line 1162
    iput-boolean v2, p0, Lcom/android/launcher4/Folder;->mItemsInvalidated:Z

    .line 1165
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mCurrentDragInfo:Lcom/android/launcher4/ShortcutInfo;

    if-ne p1, v1, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher4/Folder;->getViewForInfo(Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1167
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher4/Folder;->mContent:Lcom/android/launcher4/CellLayout;

    invoke-virtual {v1, v0}, Lcom/android/launcher4/CellLayout;->removeView(Landroid/view/View;)V

    .line 1168
    iget v1, p0, Lcom/android/launcher4/Folder;->mState:I

    if-ne v1, v2, :cond_2

    .line 1169
    iput-boolean v2, p0, Lcom/android/launcher4/Folder;->mRearrangeOnClose:Z

    .line 1173
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 1174
    invoke-direct {p0}, Lcom/android/launcher4/Folder;->replaceFolderWithFinalItem()V

    goto :goto_0

    .line 1171
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher4/Folder;->getItemCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher4/Folder;->setupContentForNumItems(I)V

    goto :goto_1
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 1195
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public onUninstallActivityReturned(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/Folder;->mDeferDropAfterUninstall:Z

    .line 781
    iput-boolean p1, p0, Lcom/android/launcher4/Folder;->mUninstallSuccessful:Z

    .line 782
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mDeferredAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mDeferredAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 785
    :cond_0
    return-void
.end method

.method readingOrderGreaterThan([I[I)Z
    .locals 4
    .param p1, "v1"    # [I
    .param p2, "v2"    # [I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 578
    aget v2, p1, v1

    aget v3, p2, v1

    if-gt v2, v3, :cond_0

    aget v2, p1, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_1

    aget v2, p1, v0

    aget v3, p2, v0

    if-le v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 581
    :cond_1
    return v0
.end method

.method public setDragController(Lcom/android/launcher4/DragController;)V
    .locals 0
    .param p1, "dragController"    # Lcom/android/launcher4/DragController;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/launcher4/Folder;->mDragController:Lcom/android/launcher4/DragController;

    .line 315
    return-void
.end method

.method setFolderIcon(Lcom/android/launcher4/FolderIcon;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/launcher4/FolderIcon;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/launcher4/Folder;->mFolderIcon:Lcom/android/launcher4/FolderIcon;

    .line 319
    return-void
.end method

.method public showItem(Lcom/android/launcher4/ShortcutInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 1142
    invoke-direct {p0, p1}, Lcom/android/launcher4/Folder;->getViewForInfo(Lcom/android/launcher4/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    .line 1143
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    return-void
.end method

.method public startEditingFolderName()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/launcher4/Folder;->mFolderName:Lcom/android/launcher4/FolderEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher4/FolderEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/Folder;->mIsEditingName:Z

    .line 262
    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x1

    return v0
.end method
