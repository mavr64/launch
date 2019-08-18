.class Lcom/syu/util/FuncUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "FuncUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/util/FuncUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/util/FuncUtils;


# direct methods
.method constructor <init>(Lcom/syu/util/FuncUtils;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/util/FuncUtils$1;->this$0:Lcom/syu/util/FuncUtils;

    .line 502
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 505
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    const-string v2, "time-zone"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "tz":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/syu/util/FuncUtils;->access$0(Ljava/util/Calendar;)V

    .line 509
    invoke-static {}, Lcom/syu/util/FuncUtils;->access$1()Ljava/text/SimpleDateFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 510
    invoke-static {}, Lcom/syu/util/FuncUtils;->access$1()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {}, Lcom/syu/util/FuncUtils;->access$2()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 512
    .end local v1    # "tz":Ljava/lang/String;
    :cond_0
    return-void
.end method
