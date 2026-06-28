.class public final Landroid/system/StructPollfd;
.super Ljava/lang/Object;
.source "StructPollfd.java"


# instance fields
.field public events:S

.field public fd:Ljava/io/FileDescriptor;

.field public revents:S

.field public userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 47
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
