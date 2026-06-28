.class public final Landroid/system/StructUtsname;
.super Ljava/lang/Object;
.source "StructUtsname.java"


# instance fields
.field public final machine:Ljava/lang/String;

.field public final nodename:Ljava/lang/String;

.field public final release:Ljava/lang/String;

.field public final sysname:Ljava/lang/String;

.field public final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/system/StructUtsname;->sysname:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Landroid/system/StructUtsname;->nodename:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Landroid/system/StructUtsname;->version:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Landroid/system/StructUtsname;->machine:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 53
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
