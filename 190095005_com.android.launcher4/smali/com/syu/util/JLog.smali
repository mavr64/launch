.class public Lcom/syu/util/JLog;
.super Ljava/lang/Object;
.source "JLog.java"


# static fields
.field static Debug:Z

.field static Tag:Ljava/lang/String;

.field static instance:Lcom/syu/util/JLog;

.field static startime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "JLog"

    sput-object v0, Lcom/syu/util/JLog;->Tag:Ljava/lang/String;

    .line 8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/util/JLog;->Debug:Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/syu/util/JLog;->startime:J

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/syu/util/JLog;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/syu/util/JLog;->instance:Lcom/syu/util/JLog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/syu/util/JLog;

    invoke-direct {v0}, Lcom/syu/util/JLog;-><init>()V

    sput-object v0, Lcom/syu/util/JLog;->instance:Lcom/syu/util/JLog;

    .line 15
    :cond_0
    sget-object v0, Lcom/syu/util/JLog;->instance:Lcom/syu/util/JLog;

    return-object v0
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/syu/util/JLog;->Debug:Z

    .line 48
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 43
    sput-object p0, Lcom/syu/util/JLog;->Tag:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-boolean v0, Lcom/syu/util/JLog;->Debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/syu/util/JLog;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "====="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-boolean v0, Lcom/syu/util/JLog;->Debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/syu/util/JLog;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "====="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    sget-boolean v0, Lcom/syu/util/JLog;->Debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/syu/util/JLog;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "====="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-boolean v0, Lcom/syu/util/JLog;->Debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/syu/util/JLog;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "====="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-boolean v0, Lcom/syu/util/JLog;->Debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/syu/util/JLog;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "====="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    return-void
.end method
