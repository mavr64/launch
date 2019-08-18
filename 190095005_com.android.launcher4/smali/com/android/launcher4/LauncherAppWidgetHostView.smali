.class public Lcom/android/launcher4/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/android/launcher4/DragLayer$TouchCompleteListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragLayer:Lcom/android/launcher4/DragLayer;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

.field private mPreviousOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/android/launcher4/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher4/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    .line 44
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    check-cast p1, Lcom/android/launcher4/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mDragLayer:Lcom/android/launcher4/DragLayer;

    .line 46
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 109
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/CheckLongPressHelper;->cancelLongPress()V

    .line 110
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 119
    const/high16 v0, 0x60000

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/CheckLongPressHelper;->cancelLongPress()V

    .line 72
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/CheckLongPressHelper;->postCheckForLongPress()V

    .line 80
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mDragLayer:Lcom/android/launcher4/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher4/DragLayer;->setTouchCompleteListener(Lcom/android/launcher4/DragLayer$TouchCompleteListener;)V

    goto :goto_1

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_1

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchComplete()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/CheckLongPressHelper;->cancelLongPress()V

    .line 115
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher4/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher4/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public orientationChangedSincedInflation()Z
    .locals 2

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 62
    .local v0, "orientation":I
    iget v1, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_0

    .line 63
    const/4 v1, 0x1

    .line 65
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 1
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher4/LauncherAppWidgetHostView;->mPreviousOrientation:I

    .line 57
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 58
    return-void
.end method
