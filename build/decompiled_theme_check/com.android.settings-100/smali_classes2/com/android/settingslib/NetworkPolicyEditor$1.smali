.class Lcom/android/settingslib/NetworkPolicyEditor$1;
.super Landroid/os/AsyncTask;
.source "NetworkPolicyEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/NetworkPolicyEditor;->writeAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/NetworkPolicyEditor;

.field final synthetic val$policies:[Landroid/net/NetworkPolicy;


# direct methods
.method constructor <init>(Lcom/android/settingslib/NetworkPolicyEditor;[Landroid/net/NetworkPolicy;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settingslib/NetworkPolicyEditor$1;->this$0:Lcom/android/settingslib/NetworkPolicyEditor;

    iput-object p2, p0, Lcom/android/settingslib/NetworkPolicyEditor$1;->val$policies:[Landroid/net/NetworkPolicy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/NetworkPolicyEditor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/android/settingslib/NetworkPolicyEditor$1;->this$0:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object p0, p0, Lcom/android/settingslib/NetworkPolicyEditor$1;->val$policies:[Landroid/net/NetworkPolicy;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/NetworkPolicyEditor;->write([Landroid/net/NetworkPolicy;)V

    const/4 p0, 0x0

    return-object p0
.end method
