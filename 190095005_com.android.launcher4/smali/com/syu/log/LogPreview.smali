.class public Lcom/syu/log/LogPreview;
.super Ljava/lang/Object;
.source "LogPreview.java"


# static fields
.field static instance:Lcom/syu/log/LogPreview;


# instance fields
.field checkWork:Landroid/os/HandlerThread;

.field debugSwith:Ljava/lang/String;

.field logPreview:Landroid/widget/TextView;

.field logs:Ljava/lang/StringBuffer;

.field mContext:Landroid/content/Context;

.field mDebug:Z

.field mHandler:Landroid/os/Handler;

.field mParams:Landroid/view/WindowManager$LayoutParams;

.field rootView:Landroid/widget/FrameLayout;

.field wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "swith"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/syu/log/LogPreview;->logs:Ljava/lang/StringBuffer;

    .line 50
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "check work"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/syu/log/LogPreview;->checkWork:Landroid/os/HandlerThread;

    .line 69
    const-string v2, "Logs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LogPreview === LogPreview swith = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/log/LogPreview;->mContext:Landroid/content/Context;

    .line 71
    iget-object v2, p0, Lcom/syu/log/LogPreview;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/syu/log/LogPreview;->wm:Landroid/view/WindowManager;

    .line 72
    invoke-virtual {p0}, Lcom/syu/log/LogPreview;->init()V

    .line 73
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/syu/log/LogPreview;->mHandler:Landroid/os/Handler;

    .line 74
    iput-object p2, p0, Lcom/syu/log/LogPreview;->debugSwith:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/syu/log/LogPreview;->checkWork:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/syu/log/LogPreview;->checkWork:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    .local v1, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/syu/log/LogPreview$1;

    invoke-direct {v0, p0, v1}, Lcom/syu/log/LogPreview$1;-><init>(Lcom/syu/log/LogPreview;Landroid/os/Handler;)V

    .line 105
    .local v0, "check":Ljava/lang/Runnable;
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/syu/log/LogPreview;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "swith"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lcom/syu/log/LogPreview;->instance:Lcom/syu/log/LogPreview;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/syu/log/LogPreview;

    invoke-direct {v0, p0, p1}, Lcom/syu/log/LogPreview;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/syu/log/LogPreview;->instance:Lcom/syu/log/LogPreview;

    .line 61
    :cond_0
    sget-object v0, Lcom/syu/log/LogPreview;->instance:Lcom/syu/log/LogPreview;

    return-object v0
.end method

.method public static show(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v0, Lcom/syu/log/LogPreview;->instance:Lcom/syu/log/LogPreview;

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    sget-object v0, Lcom/syu/log/LogPreview;->instance:Lcom/syu/log/LogPreview;

    invoke-virtual {v0, p0}, Lcom/syu/log/LogPreview;->showLogLine(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkDebug()V
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/syu/log/LogPreview;->debugSwith:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/syu/log/LogPreview;->debugSwith:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/syu/log/LogPreview;->debugSwith:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/syu/log/LogPreview;->mDebug:Z

    .line 133
    const/4 v0, 0x0

    .line 134
    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/syu/log/LogPreview;->checkWork:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/syu/log/LogPreview;->checkWork:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 162
    iget-object v1, p0, Lcom/syu/log/LogPreview;->checkWork:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 109
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 113
    const/16 v5, 0x7d3

    .line 114
    const/16 v6, 0x38

    .line 117
    const/4 v7, 0x1

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 109
    iput-object v0, p0, Lcom/syu/log/LogPreview;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 119
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/syu/log/LogPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/syu/log/LogPreview;->rootView:Landroid/widget/FrameLayout;

    .line 121
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/syu/log/LogPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/syu/log/LogPreview;->logPreview:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/syu/log/LogPreview;->logPreview:Landroid/widget/TextView;

    const/16 v2, 0x53

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 123
    iget-object v0, p0, Lcom/syu/log/LogPreview;->logPreview:Landroid/widget/TextView;

    const v2, -0xff0100

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v0, p0, Lcom/syu/log/LogPreview;->rootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/syu/log/LogPreview;->logPreview:Landroid/widget/TextView;

    .line 125
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 126
    const/4 v4, -0x2

    .line 125
    invoke-direct {v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    return-void
.end method

.method public setDebugSwith(Ljava/lang/String;)V
    .locals 0
    .param p1, "debugSwith"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/syu/log/LogPreview;->debugSwith:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public showLogLine(Ljava/lang/String;)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/syu/log/LogPreview;->mDebug:Z

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/syu/log/LogPreview;->logs:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x5000

    if-lt v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/syu/log/LogPreview;->logs:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/16 v2, 0x1000

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/syu/log/LogPreview;->logs:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    iget-object v0, p0, Lcom/syu/log/LogPreview;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/syu/log/LogPreview$2;

    invoke-direct {v1, p0}, Lcom/syu/log/LogPreview$2;-><init>(Lcom/syu/log/LogPreview;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
