.class public Lcom/syu/util/Print;
.super Ljava/lang/Object;
.source "Print.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/util/Print$DrawMsgView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "car"

.field static print:Lcom/syu/util/Print;


# instance fields
.field context:Landroid/content/Context;

.field drawMsgView:Lcom/syu/util/Print$DrawMsgView;

.field manager:Landroid/view/WindowManager;

.field params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/syu/util/Print;->context:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/syu/util/Print$DrawMsgView;

    invoke-direct {v0, p0, p1}, Lcom/syu/util/Print$DrawMsgView;-><init>(Lcom/syu/util/Print;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/syu/util/Print;->drawMsgView:Lcom/syu/util/Print$DrawMsgView;

    .line 34
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/syu/util/Print;->manager:Landroid/view/WindowManager;

    .line 35
    invoke-virtual {p0}, Lcom/syu/util/Print;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/syu/util/Print;->params:Landroid/view/WindowManager$LayoutParams;

    .line 36
    iget-object v0, p0, Lcom/syu/util/Print;->manager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/syu/util/Print;->drawMsgView:Lcom/syu/util/Print$DrawMsgView;

    iget-object v2, p0, Lcom/syu/util/Print;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    return-void
.end method

.method private addForceWindow(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/syu/util/Print;->drawMsgView:Lcom/syu/util/Print$DrawMsgView;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/syu/util/Print;->drawMsgView:Lcom/syu/util/Print$DrawMsgView;

    invoke-virtual {v0}, Lcom/syu/util/Print$DrawMsgView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/syu/util/Print;->drawMsgView:Lcom/syu/util/Print$DrawMsgView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/syu/util/Print$DrawMsgView;->setVisibility(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/syu/util/Print;->drawMsgView:Lcom/syu/util/Print$DrawMsgView;

    invoke-virtual {v0, p1}, Lcom/syu/util/Print$DrawMsgView;->setMsg(Ljava/lang/String;)V

    .line 192
    :cond_1
    return-void
.end method

.method private deleteForceWindow()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/syu/util/Print;->drawMsgView:Lcom/syu/util/Print$DrawMsgView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/syu/util/Print;->drawMsgView:Lcom/syu/util/Print$DrawMsgView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/syu/util/Print$DrawMsgView;->setVisibility(I)V

    .line 198
    :cond_0
    return-void
.end method

.method public static getPrint()Lcom/syu/util/Print;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/syu/util/Print;->print:Lcom/syu/util/Print;

    return-object v0
.end method

.method public static getTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "df":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initPrint(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lcom/syu/util/Print;->print:Lcom/syu/util/Print;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/syu/util/Print;

    invoke-direct {v0, p0}, Lcom/syu/util/Print;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/syu/util/Print;->print:Lcom/syu/util/Print;

    .line 43
    :cond_0
    return-void
.end method

.method private isNeed2Print()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "/mnt/sdcard/tzylau"

    .line 52
    .local v0, "debugPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/sdcard/tzylau"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const/4 v2, 0x1

    .line 56
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/syu/util/Print;->isNeed2Print()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "car"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0, p1}, Lcom/syu/util/Print;->write2Txt(Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/syu/util/Print;->deleteForceWindow()V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/syu/util/Print;->isNeed2Print()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0, p2}, Lcom/syu/util/Print;->write2Txt(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/syu/util/Print;->deleteForceWindow()V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/syu/util/Print;->isNeed2Print()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "car"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0, p1}, Lcom/syu/util/Print;->write2Txt(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/syu/util/Print;->deleteForceWindow()V

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/syu/util/Print;->isNeed2Print()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0, p2}, Lcom/syu/util/Print;->write2Txt(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/syu/util/Print;->deleteForceWindow()V

    goto :goto_0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 202
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 203
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 204
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 205
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 206
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 207
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 208
    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 209
    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 210
    const/16 v1, 0x7d6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 212
    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/syu/util/Print;->isNeed2Print()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "car"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0, p1}, Lcom/syu/util/Print;->write2Txt(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/syu/util/Print;->deleteForceWindow()V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/syu/util/Print;->isNeed2Print()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0, p2}, Lcom/syu/util/Print;->write2Txt(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/syu/util/Print;->deleteForceWindow()V

    goto :goto_0
.end method

.method public v(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/syu/util/Print;->isNeed2Print()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "car"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0, p1}, Lcom/syu/util/Print;->write2Txt(Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/syu/util/Print;->deleteForceWindow()V

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/syu/util/Print;->isNeed2Print()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, p2}, Lcom/syu/util/Print;->write2Txt(Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/syu/util/Print;->deleteForceWindow()V

    goto :goto_0
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/syu/util/Print;->isNeed2Print()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "car"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0, p1}, Lcom/syu/util/Print;->write2Txt(Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/syu/util/Print;->deleteForceWindow()V

    goto :goto_0
.end method

.method public write2Txt(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v4, p0, Lcom/syu/util/Print;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "pkgName":Ljava/lang/String;
    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/mnt/sdcard/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "writePath":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 169
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/util/Print;->getTime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 171
    const-string v4, "\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 172
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
