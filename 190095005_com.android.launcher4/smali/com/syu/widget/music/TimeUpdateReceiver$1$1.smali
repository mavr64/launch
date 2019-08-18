.class Lcom/syu/widget/music/TimeUpdateReceiver$1$1;
.super Ljava/lang/Object;
.source "TimeUpdateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/widget/music/TimeUpdateReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/widget/music/TimeUpdateReceiver$1;


# direct methods
.method constructor <init>(Lcom/syu/widget/music/TimeUpdateReceiver$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/widget/music/TimeUpdateReceiver$1$1;->this$1:Lcom/syu/widget/music/TimeUpdateReceiver$1;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/syu/widget/music/TimeUpdateReceiver;->mWidgets:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/syu/widget/music/Widget;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 45
    const/4 v0, 0x0

    .line 47
    invoke-static {}, Lcom/fyt/widget/Clock;->getClock()Lcom/fyt/widget/Clock;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {}, Lcom/fyt/widget/Clock;->getClock()Lcom/fyt/widget/Clock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyt/widget/Clock;->setTime()V

    .line 51
    :cond_0
    invoke-static {}, Lcom/fyt/widget/Date;->getDate()Lcom/fyt/widget/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 52
    invoke-static {}, Lcom/fyt/widget/Date;->getDate()Lcom/fyt/widget/Date;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyt/widget/Date;->setDate()V

    .line 55
    :cond_1
    invoke-static {}, Lcom/fyt/widget/Modulation;->getModulation()Lcom/fyt/widget/Modulation;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 56
    invoke-static {}, Lcom/fyt/widget/Modulation;->getModulation()Lcom/fyt/widget/Modulation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyt/widget/Modulation;->setModulation()V

    .line 59
    :cond_2
    invoke-static {}, Lcom/fyt/widget/WeekDay;->getWeekDay()Lcom/fyt/widget/WeekDay;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 60
    invoke-static {}, Lcom/fyt/widget/WeekDay;->getWeekDay()Lcom/fyt/widget/WeekDay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyt/widget/WeekDay;->setDate()V

    .line 62
    :cond_3
    return-void

    .line 42
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/widget/music/Widget;

    .line 43
    .local v1, "widget":Lcom/syu/widget/music/Widget;
    invoke-virtual {v1}, Lcom/syu/widget/music/Widget;->update()V

    goto :goto_0
.end method
