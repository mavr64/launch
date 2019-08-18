.class public Lcom/fyt/car/Logs;
.super Ljava/lang/Object;
.source "Logs.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "Qin_Debug"

.field private static mInstance:Lcom/fyt/car/Logs;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/fyt/car/Logs;->mInstance:Lcom/fyt/car/Logs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/fyt/car/Logs;->mToast:Landroid/widget/Toast;

    .line 15
    iput-object v0, p0, Lcom/fyt/car/Logs;->mContext:Landroid/content/Context;

    .line 27
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyt/car/Logs;->mToast:Landroid/widget/Toast;

    .line 28
    iput-object p1, p0, Lcom/fyt/car/Logs;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/fyt/car/Logs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-object v0, Lcom/fyt/car/Logs;->mInstance:Lcom/fyt/car/Logs;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/fyt/car/Logs;

    invoke-direct {v0, p0}, Lcom/fyt/car/Logs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/fyt/car/Logs;->mInstance:Lcom/fyt/car/Logs;

    .line 22
    :cond_0
    sget-object v0, Lcom/fyt/car/Logs;->mInstance:Lcom/fyt/car/Logs;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 72
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 92
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method


# virtual methods
.method public showToast(II)V
    .locals 7
    .param p1, "str"    # I
    .param p2, "duration"    # I

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show ----------- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fyt/car/Logs;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fyt/car/Logs;->e(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/fyt/car/Logs;->mToast:Landroid/widget/Toast;

    const/4 v2, 0x0

    const/16 v3, 0x78

    invoke-virtual {v1, v6, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 48
    iget-object v1, p0, Lcom/fyt/car/Logs;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 49
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fyt/car/Logs;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "view":Landroid/widget/TextView;
    const-string v1, "#696969"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 51
    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    iget-object v1, p0, Lcom/fyt/car/Logs;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 56
    iget-object v1, p0, Lcom/fyt/car/Logs;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 57
    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show ----------- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fyt/car/Logs;->e(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/fyt/car/Logs;->mToast:Landroid/widget/Toast;

    const/4 v2, 0x0

    const/16 v3, 0x78

    invoke-virtual {v1, v6, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 34
    iget-object v1, p0, Lcom/fyt/car/Logs;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 35
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fyt/car/Logs;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "view":Landroid/widget/TextView;
    const-string v1, "#696969"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 37
    invoke-virtual {v0, v5, v4, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 41
    iget-object v1, p0, Lcom/fyt/car/Logs;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 42
    iget-object v1, p0, Lcom/fyt/car/Logs;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 43
    return-void
.end method
