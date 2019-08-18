.class public abstract Lcom/syu/widget/music/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider.java"


# static fields
.field public static final APP_WIDGET_START:Ljava/lang/String; = "syu.widget.start"

.field public static final BTAVNEXTSERVICE:Ljava/lang/String; = "com.syu.bt.byav.widgetNext"

.field public static final BTAVPLAYSERVICE:Ljava/lang/String; = "com.syu.bt.byav.widgetPlayPause"

.field public static final BTAVPRESERVICE:Ljava/lang/String; = "com.syu.bt.byav.widgetPrev"

.field public static final LAUNCHERMUSIC:Ljava/lang/String; = "com.fyt.launcher.music"

.field public static final NEXTSERVICE:Ljava/lang/String; = "com.syu.music.next"

.field public static final PLAYSERVICE:Ljava/lang/String; = "com.syu.music.playpause"

.field public static final PRESERVICE:Ljava/lang/String; = "com.syu.music.prev"

.field public static final RADIONEXT:Ljava/lang/String; = "com.syu.radio.nextservice"

.field public static final RADIOPREV:Ljava/lang/String; = "com.syu.radio.prevservice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 66
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 70
    return-void

    .line 66
    :cond_0
    aget v0, p2, v2

    .line 67
    .local v0, "id":I
    invoke-static {v0}, Lcom/syu/widget/music/Widget;->getWidget(I)Lcom/syu/widget/music/Widget;

    move-result-object v1

    .line 68
    .local v1, "widget":Lcom/syu/widget/music/Widget;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/syu/widget/music/Widget;->delete()V

    .line 66
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "action":Ljava/lang/String;
    const-string v3, "TT"

    const-string v4, "WidgetProvider onReceive =====  "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 44
    .local v2, "manager":Landroid/appwidget/AppWidgetManager;
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 45
    .local v0, "_ids":[I
    array-length v3, v0

    if-lez v3, :cond_0

    .line 46
    invoke-virtual {p0, p1, v2, v0}, Lcom/syu/widget/music/WidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 52
    .end local v0    # "_ids":[I
    .end local v2    # "manager":Landroid/appwidget/AppWidgetManager;
    :cond_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 56
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 61
    return-void

    .line 56
    :cond_0
    aget v0, p3, v1

    .line 57
    .local v0, "id":I
    const-string v3, "TT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WidgetProvider onUpdate =====  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/syu/widget/music/WidgetProvider;->update(Landroid/content/Context;I)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract update(Landroid/content/Context;I)V
.end method
