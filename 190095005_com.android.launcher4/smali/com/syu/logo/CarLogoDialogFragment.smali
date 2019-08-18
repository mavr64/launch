.class public Lcom/syu/logo/CarLogoDialogFragment;
.super Landroid/app/DialogFragment;
.source "CarLogoDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;,
        Lcom/syu/logo/CarLogoDialogFragment$ViewHolder;
    }
.end annotation


# static fields
.field public static final SHARED_KEY:Ljava/lang/String; = "Carlogo"

.field public static final SHARED_NAME:Ljava/lang/String; = "Launcher"

.field public static final TAG:Ljava/lang/String; = "CarLogoDialogFragment"

.field public static carLogoData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;

.field private mGridView:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/syu/logo/CarLogoDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 46
    invoke-virtual {p0}, Lcom/syu/logo/CarLogoDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {p0}, Lcom/syu/logo/CarLogoDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 48
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 49
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x50

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 50
    const/16 v3, 0x32

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 51
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    const v3, 0x7f040015

    invoke-virtual {p1, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f110043

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/syu/logo/CarLogoDialogFragment;->mGridView:Landroid/widget/GridView;

    .line 56
    new-instance v3, Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;

    sget-object v4, Lcom/syu/logo/CarLogoDialogFragment;->carLogoData:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;-><init>(Lcom/syu/logo/CarLogoDialogFragment;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/syu/logo/CarLogoDialogFragment;->mAdapter:Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;

    .line 57
    iget-object v3, p0, Lcom/syu/logo/CarLogoDialogFragment;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/syu/logo/CarLogoDialogFragment;->mAdapter:Lcom/syu/logo/CarLogoDialogFragment$CarLogoAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    iget-object v3, p0, Lcom/syu/logo/CarLogoDialogFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    const-string v3, "Launcher"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher4/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    .local v1, "sPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Carlogo"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    invoke-virtual {p0}, Lcom/syu/logo/CarLogoDialogFragment;->dismiss()V

    .line 116
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-static {v2}, Lcom/syu/widget/music/Widget;->update(Landroid/content/Context;)V

    .line 117
    return-void
.end method
