.class Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;
.super Ljava/lang/Object;
.source "LauncherList_Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyt/widget/LauncherList_Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private AppName:Landroid/widget/TextView;

.field public appbtn_bg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/fyt/widget/LauncherList_Adapter;


# direct methods
.method constructor <init>(Lcom/fyt/widget/LauncherList_Adapter;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;->this$0:Lcom/fyt/widget/LauncherList_Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;->AppName:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$1(Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fyt/widget/LauncherList_Adapter$ViewHolder;->AppName:Landroid/widget/TextView;

    return-object v0
.end method
