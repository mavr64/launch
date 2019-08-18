.class public Lcom/syu/widget/music/DateNaviProvider;
.super Lcom/syu/widget/music/WidgetProvider;
.source "DateNaviProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherClockProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/syu/widget/music/WidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appwidgetId"    # I

    .prologue
    .line 13
    invoke-static {p2}, Lcom/syu/widget/music/Widget;->getWidget(I)Lcom/syu/widget/music/Widget;

    move-result-object v0

    .line 14
    .local v0, "widget":Lcom/syu/widget/music/Widget;
    if-nez v0, :cond_0

    .line 15
    const-string v1, "mm"

    const-string v2, "DateNaviProvider update"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v0, Lcom/syu/widget/music/DateNaviWidget;

    .end local v0    # "widget":Lcom/syu/widget/music/Widget;
    invoke-direct {v0, p1, p2}, Lcom/syu/widget/music/DateNaviWidget;-><init>(Landroid/content/Context;I)V

    .line 18
    .restart local v0    # "widget":Lcom/syu/widget/music/Widget;
    :cond_0
    invoke-virtual {v0}, Lcom/syu/widget/music/Widget;->update()V

    .line 19
    return-void
.end method
