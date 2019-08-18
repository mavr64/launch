.class Lcom/syu/popwindow/PopWindowBright$2;
.super Ljava/lang/Object;
.source "PopWindowBright.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/popwindow/PopWindowBright;->initPopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/popwindow/PopWindowBright;


# direct methods
.method constructor <init>(Lcom/syu/popwindow/PopWindowBright;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/popwindow/PopWindowBright$2;->this$0:Lcom/syu/popwindow/PopWindowBright;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright$2;->this$0:Lcom/syu/popwindow/PopWindowBright;

    invoke-virtual {v0}, Lcom/syu/popwindow/PopWindowBright;->dismiss()V

    .line 68
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright$2;->this$0:Lcom/syu/popwindow/PopWindowBright;

    invoke-static {v0}, Lcom/syu/popwindow/PopWindowBright;->access$0(Lcom/syu/popwindow/PopWindowBright;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method
