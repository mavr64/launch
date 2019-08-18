.class public Lcom/syu/widget/music/DateTimeProvider1;
.super Lcom/syu/widget/music/WidgetProvider;
.source "DateTimeProvider1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/syu/widget/music/WidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appwidgetId"    # I

    .prologue
    .line 21
    invoke-static {p2}, Lcom/syu/widget/music/Widget;->getWidget(I)Lcom/syu/widget/music/Widget;

    move-result-object v0

    .line 22
    .local v0, "widget":Lcom/syu/widget/music/Widget;
    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/syu/widget/music/DateTimeWidget1;

    .end local v0    # "widget":Lcom/syu/widget/music/Widget;
    invoke-direct {v0, p1, p2}, Lcom/syu/widget/music/DateTimeWidget1;-><init>(Landroid/content/Context;I)V

    .line 25
    .restart local v0    # "widget":Lcom/syu/widget/music/Widget;
    :cond_0
    invoke-virtual {v0}, Lcom/syu/widget/music/Widget;->update()V

    .line 26
    return-void
.end method
