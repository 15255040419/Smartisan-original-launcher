.class public final Landroid/system/StructPasswd;
.super Ljava/lang/Object;
.source "StructPasswd.java"


# instance fields
.field public final pw_dir:Ljava/lang/String;

.field public final pw_gid:I

.field public final pw_name:Ljava/lang/String;

.field public final pw_shell:Ljava/lang/String;

.field public final pw_uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/system/StructPasswd;->pw_name:Ljava/lang/String;

    .line 39
    iput p2, p0, Landroid/system/StructPasswd;->pw_uid:I

    .line 40
    iput p3, p0, Landroid/system/StructPasswd;->pw_gid:I

    .line 41
    iput-object p4, p0, Landroid/system/StructPasswd;->pw_dir:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Landroid/system/StructPasswd;->pw_shell:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
