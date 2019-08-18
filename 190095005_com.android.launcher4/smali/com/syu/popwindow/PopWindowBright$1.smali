.class Lcom/syu/popwindow/PopWindowBright$1;
.super Landroid/os/CountDownTimer;
.source "PopWindowBright.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/popwindow/PopWindowBright;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/popwindow/PopWindowBright;


# direct methods
.method constructor <init>(Lcom/syu/popwindow/PopWindowBright;JJ)V
    .locals 0
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/popwindow/PopWindowBright$1;->this$0:Lcom/syu/popwindow/PopWindowBright;

    .line 32
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/syu/popwindow/PopWindowBright$1;->this$0:Lcom/syu/popwindow/PopWindowBright;

    invoke-virtual {v0}, Lcom/syu/popwindow/PopWindowBright;->dismiss()V

    .line 37
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1, "arg0"    # J

    .prologue
    .line 42
    return-void
.end method
