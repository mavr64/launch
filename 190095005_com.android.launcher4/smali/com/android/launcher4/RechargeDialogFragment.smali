.class public Lcom/android/launcher4/RechargeDialogFragment;
.super Landroid/app/DialogFragment;
.source "RechargeDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;,
        Lcom/android/launcher4/RechargeDialogFragment$ViewHolder;
    }
.end annotation


# static fields
.field public static RechargePackageName:Ljava/lang/String; = null

.field public static final SHARED_KEY:Ljava/lang/String; = "defaultPackageName"

.field public static final SHARED_NAME:Ljava/lang/String; = "RechargePackageName"

.field public static cannotChoose:Z


# instance fields
.field currentAppIcon:Landroid/widget/ImageView;

.field currentAppName:Landroid/widget/TextView;

.field mAdapter:Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher4/RechargeDialogFragment;->cannotChoose:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static cleanRecharge()V
    .locals 6

    .prologue
    .line 147
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher4/RechargeDialogFragment;->cannotChoose:Z

    .line 148
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    const-string v4, "RechargePackageName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher4/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 149
    .local v2, "sPreferences":Landroid/content/SharedPreferences;
    const-string v3, "defaultPackageName"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "defaultPackageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.syu.unicar"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 153
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "defaultPackageName"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static editRecharge(Lcom/android/launcher4/Launcher;)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher4/Launcher;

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/android/launcher4/RechargeDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher4/RechargeDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "RechargeDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/RechargeDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openRecharge(Lcom/android/launcher4/Launcher;Landroid/view/View;)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 162
    if-nez p0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/android/launcher4/RechargeDialogFragment;->RechargePackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher4/RechargeDialogFragment;->RechargePackageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    sget-object v0, Lcom/android/launcher4/RechargeDialogFragment;->RechargePackageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/syu/util/FytPackage;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 168
    const-string v1, "RechargeACTION"

    .line 166
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher4/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Lcom/android/launcher4/RechargeDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher4/RechargeDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher4/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "RechargeDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher4/RechargeDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveRecharge()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 139
    sput-boolean v4, Lcom/android/launcher4/RechargeDialogFragment;->cannotChoose:Z

    .line 140
    sget-object v2, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    const-string v3, "RechargePackageName"

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher4/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 141
    .local v1, "sPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "defaultPackageName"

    const-string v3, "com.syu.unicar"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/launcher4/RechargeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 47
    const v2, 0x7f040016

    invoke-virtual {p1, v2, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "view":Landroid/view/View;
    sget-object v2, Lcom/android/launcher4/AllAppsList;->data:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->mData:Ljava/util/ArrayList;

    .line 50
    const v2, 0x7f110044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->currentAppIcon:Landroid/widget/ImageView;

    .line 51
    const v2, 0x7f110045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->currentAppName:Landroid/widget/TextView;

    .line 52
    sget-object v2, Lcom/android/launcher4/RechargeDialogFragment;->RechargePackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 65
    .end local v0    # "i":I
    :goto_1
    const v2, 0x7f110046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->mListView:Landroid/widget/ListView;

    .line 66
    new-instance v2, Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;

    iget-object v3, p0, Lcom/android/launcher4/RechargeDialogFragment;->mData:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;-><init>(Lcom/android/launcher4/RechargeDialogFragment;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->mAdapter:Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;

    .line 67
    iget-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/launcher4/RechargeDialogFragment;->mAdapter:Lcom/android/launcher4/RechargeDialogFragment$RechargeAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    return-object v1

    .line 54
    .restart local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/AppInfo;

    invoke-virtual {v2}, Lcom/android/launcher4/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/launcher4/RechargeDialogFragment;->RechargePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    iget-object v3, p0, Lcom/android/launcher4/RechargeDialogFragment;->currentAppIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/AppInfo;

    iget-object v2, v2, Lcom/android/launcher4/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v3, p0, Lcom/android/launcher4/RechargeDialogFragment;->currentAppName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/AppInfo;

    iget-object v2, v2, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->currentAppIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v2, p0, Lcom/android/launcher4/RechargeDialogFragment;->currentAppName:Landroid/widget/TextView;

    const v3, 0x7f0c00bb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 76
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/android/launcher4/RechargeDialogFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/AppInfo;

    invoke-virtual {v3}, Lcom/android/launcher4/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "selectPackageName":Ljava/lang/String;
    sput-object v2, Lcom/android/launcher4/RechargeDialogFragment;->RechargePackageName:Ljava/lang/String;

    .line 79
    sget-object v3, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    const-string v4, "RechargePackageName"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher4/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    .local v1, "sPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "defaultPackageName"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher4/RechargeDialogFragment;->dismiss()V

    .line 85
    return-void
.end method
