.class public Lcom/syu/popwindow/PopWindowBright;
.super Landroid/widget/PopupWindow;
.source "PopWindowBright.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mBrightLevel:I

.field private mContext:Landroid/content/Context;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private timer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "brightLevel"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 32
    new-instance v0, Lcom/syu/popwindow/PopWindowBright$1;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/syu/popwindow/PopWindowBright$1;-><init>(Lcom/syu/popwindow/PopWindowBright;JJ)V

    iput-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->timer:Landroid/os/CountDownTimer;

    .line 47
    iput-object p1, p0, Lcom/syu/popwindow/PopWindowBright;->mContext:Landroid/content/Context;

    .line 48
    iput p2, p0, Lcom/syu/popwindow/PopWindowBright;->mBrightLevel:I

    .line 49
    invoke-direct {p0}, Lcom/syu/popwindow/PopWindowBright;->initPopWindow()V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/syu/popwindow/PopWindowBright;)Landroid/os/CountDownTimer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->timer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method private initPopWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 54
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mContext:Landroid/content/Context;

    const v1, 0x7f040029

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mView:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/syu/popwindow/PopWindowBright;->setContentView(Landroid/view/View;)V

    .line 56
    const/16 v0, 0x1df

    invoke-virtual {p0, v0}, Lcom/syu/popwindow/PopWindowBright;->setWidth(I)V

    .line 57
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/syu/popwindow/PopWindowBright;->setHeight(I)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/syu/popwindow/PopWindowBright;->setFocusable(Z)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/syu/popwindow/PopWindowBright;->setOutsideTouchable(Z)V

    .line 60
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/syu/popwindow/PopWindowBright;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    new-instance v0, Lcom/syu/popwindow/PopWindowBright$2;

    invoke-direct {v0, p0}, Lcom/syu/popwindow/PopWindowBright$2;-><init>(Lcom/syu/popwindow/PopWindowBright;)V

    invoke-virtual {p0, v0}, Lcom/syu/popwindow/PopWindowBright;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 75
    invoke-direct {p0}, Lcom/syu/popwindow/PopWindowBright;->initView()V

    .line 76
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mView:Landroid/view/View;

    const v1, 0x7f110082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mSeekBar:Landroid/widget/SeekBar;

    .line 80
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 81
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 82
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mView:Landroid/view/View;

    const v1, 0x7f110083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mTextView:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/syu/popwindow/PopWindowBright;->mBrightLevel:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 85
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/syu/car/CarStates;->getTools()Lcom/syu/remote/RemoteTools;

    move-result-object v0

    .line 105
    const/16 v1, 0xa

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p2, v2, v3

    .line 104
    invoke-virtual {v0, v3, v1, v2}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    .line 106
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 111
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 116
    return-void
.end method

.method public showPopupWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/syu/popwindow/PopWindowBright;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/syu/popwindow/PopWindowBright;->dismiss()V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/syu/popwindow/PopWindowBright;->showAtLocation(Landroid/view/View;III)V

    .line 93
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method
